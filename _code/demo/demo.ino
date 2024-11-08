#define DEBUG 1
// 0 = no debug
// 1 = debug
// 2 = debug + GPS info

#ifdef EINK_V2
#include "src/eink_v2/eink_v2.h"
#else
#include "src/eink/eink.h"
#endif

#include "src/debug/debug.h"
#include "src/gps/gps.h"
#include "src/led/led.h"
#include "src/lora/lora.h"

byte localAddress = LOCAL_ADDRESS;
byte destinationAddress = DESTINATION_ADDRESS;

int sendLoRaInterval = 3000;  // Send LoRa packet every 3 seconds
uint32_t lastLoRaSendTime = 0;

int displayInterval = 10000;  // display on E-Ink every 10 seconds
uint32_t lastDisplayTime = 0;

String dataFromDestinationAddress = "";

String gpsTime = "00:00";
String gpsDate = "2021-12-31";

String gpsLatLong = "waiting for fix";
// Example "1234.12345678N, 12345.12345678E"

String gpsLatLongForDisplay = "";
// Example "1 40N, 103 91E";

LatLong latLong = {0.00, 0.00, false};
LatLong prevLatLong = {0.00, 0.00, false};
LatLong peerLatLong = {0.00, 0.00, false};
Haversine haversine = {0.000, 0};

void setup() {
  #ifdef DEBUG
  SerialUSB.begin(9600);
  delay(1000);
  #endif

  DEBUG_PRINT_MORE("Starting Oak demo on node " + String(localAddress, HEX));

  DEBUG_PRINT_MORE("   localAddress: " + String(localAddress, HEX));
  DEBUG_PRINT_MORE("   destinationAddress: " + String(destinationAddress, HEX));

  if (!initLoRa()) {
    DEBUG_PRINT("Starting LoRa failed!");
  } else {
    DEBUG_PRINT("Starting LoRa succeeded!");
  }

  if (!initEink()) {
    DEBUG_PRINT("Starting Eink failed!");
  } else {
    DEBUG_PRINT("Starting Eink succeeded!");
  }

  displayOnEink("waiting for fix", "", "searching", "for peer");
  initGPS();
}

void loop() {
  // Send LoRa packet to peer node
  if (millis() - lastLoRaSendTime > sendLoRaInterval) {
    if (hasNewGPSFix(&prevLatLong, &latLong)) {
      sendLoRa(gpsLatLong, localAddress, destinationAddress);

      DEBUG_PRINT_MORE("Send data "
        + gpsLatLong
        + " from 0x"
        + String(localAddress, HEX)
        + " to 0x"
        + String(destinationAddress, HEX));

      lastLoRaSendTime = millis();
      sendLoRaInterval = random(2000) + 1000;
    }
  }

  // Receive LoRa packet
  if (receiveLoRa(
    LoRa.parsePacket(), localAddress, dataFromDestinationAddress)) {
    DEBUG_PRINT_MORE("Received data "
      + dataFromDestinationAddress
      + " from 0x"
      + String(destinationAddress, HEX)
      + " to 0x"
      + String(localAddress, HEX));
    convertStringToLatLong(dataFromDestinationAddress, &peerLatLong);
  }

  // Receive GPS fix information
  if (receivedGPSfix()) {
    getGPStime(gpsTime);
    getGPSdate(gpsDate);
    getLatLong(&latLong);

    printGPSinfo();

    if (millis() - lastDisplayTime > displayInterval) {
      if (hasNewGPSFix(&prevLatLong, &latLong)) {
        convertLatLongForDisplay(&latLong, gpsLatLongForDisplay);

        // Both local and peer nodes have GPS fixes around the same time
        if (isOKtoCalculateHaversine(&latLong, &peerLatLong)) {
          getHaversineDistance(&latLong, &peerLatLong, &haversine);

          DEBUG_PRINT_MORE("Haversine distance: "
            + String(haversine.distance, 3)
            + " km "
            + String(haversine.timeDiff, DEC)
            + "s ago");

          displayOnEink(
            gpsLatLongForDisplay,
            gpsTime,
            String(haversine.distance, 3) + "km",
            String(haversine.timeDiff) + "s ago");
        } else {
          // Peer node had a GPS fix a while ago
          if (peerLatLong.hasValidFix) {
            int timeDiff = calculateTimeDiff(peerLatLong.timestamp);

            DEBUG_PRINT("CANNOT calculate Haversine distance.");
            DEBUG_PRINT_MORE("Haversine distance: "
                + String(haversine.distance, 3) + " km");
            DEBUG_PRINT_MORE("Haversine time difference: "
              + String(timeDiff, DEC) + "s ago");

            displayOnEink(
                gpsLatLongForDisplay,
                gpsTime,
                String(haversine.distance, 3) + "km",
                String(timeDiff, DEC) + "s ago");
          } else {
            // Local node does not have a GPS fix
            displayOnEink(
              gpsLatLongForDisplay, gpsTime, "searching", "for peer");
          }
        }  // end if (isOKtoCalculateHaversine)

        prevLatLong = latLong;
      } else {
        DEBUG_PRINT_MORE(
          "No GPS fix yet. Date: " + gpsDate +
          " Time: " + gpsTime +
          " Lat/Long: " + gpsLatLong);
        fastBlink(4);
      }

      lastDisplayTime = millis();
    }  // if (millis() - lastDisplayTime > displayInterval)
  }  // if (receivedGPSfix())
}

void printGPSinfo() {
  DEBUG_GPS("----------------------------------------");
  DEBUG_GPS("Date: " + gpsDate);
  DEBUG_GPS("Time: " + gpsTime);
  convertLatLongToString(&latLong, gpsLatLong);
  DEBUG_GPS("Lat/Long: " + gpsLatLong);

  DEBUG_GPS("GPS Fix? " + String(getGPSfix(), DEC));
  DEBUG_GPS("GPS Fix quality: " + String(getGPSfixquality(), DEC));
  DEBUG_GPS("Speed (knots): " + String(getGPSspeed()));
  DEBUG_GPS("Angle: " + String(getGPSangle()));
  DEBUG_GPS("Altitude: " + String(getGPSaltitude()));
  DEBUG_GPS("Satellites: " + String(getGPSsatellites()));

  DEBUG_GPS("Time [s] since last fix: "
    + String(getGPStimeSinceLastFix(), 3));
  DEBUG_GPS("    since last GPS time: "
    + String(getGPSlastTime(), 3));
  DEBUG_GPS("    since last GPS date: "
    + String(getGPSlastDate(), 3));
}
