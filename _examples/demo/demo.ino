#define DEBUG 2
// 0 = no debug
// 1 = debug
// 2 = debug + GPS info

#include "src/debug/debug.h"
#include "src/gps/gps.h"
#include "src/eink/eink.h"
#include "src/lora/lora.h"
#include "src/led/led.h"

// Ensure 2 nodes are flashed with the same sketch
// Just exchange the node addresses below
byte localAddress = 0xBB;
byte destinationAddress = 0xAA;

int counter = 0;
int sendInterval = 3000;  // Send LoRa packet every 3 seconds
int displayInterval = 5000;  // display on E-Ink every 5 seconds
long lastSendTime = 0;
long lastDisplayTime = 0;

String incoming = "";
String gpsTime = "10:00:23";
String gpsDate = "2021-12-31";
String gpsLatLong = "124.12345678N, 10354.12345678E";
LatLong latlong = {0.00, 0.00};
LatLong prevLatlong = {0.00, 0.00};

void setup() {
  #ifdef DEBUG
  SerialUSB.begin(9600);
  #endif

  DEBUG_PRINT_MORE("Starting Oak demo on node " + String(localAddress, HEX));

  if (!initLoRa()) {
    DEBUG_PRINT("Starting LoRa failed!");
  }

  if (!initEink()) {
    DEBUG_PRINT("Starting Eink failed!");
  }

  initGPS();
}

void loop() {
  if (millis() - lastSendTime > sendInterval) {
    String sensorData = String(counter++);
    sendLoRa(sensorData, localAddress, destinationAddress);

    DEBUG_PRINT_MORE("Send data "
      + sensorData
      + " from 0x"
      + String(localAddress, HEX)
      + " to 0x"
      + String(destinationAddress, HEX));

    lastSendTime = millis();
    sendInterval = random(2000) + 1000;
  }

  if (receiveLoRa(LoRa.parsePacket(), localAddress, incoming)) {
    DEBUG_PRINT_MORE("Received data "
      + incoming
      + " from 0x"
      + String(destinationAddress, HEX)
      + " to 0x"
      + String(localAddress, HEX));
  }

  if (receivedGPSfix()) {
    printGPSinfo();

    if (millis() - lastDisplayTime > displayInterval) {
      if (hasNewGPSFix(&prevLatlong, &latlong)) {
        // displayOnEink(&latlong, gpsTime);
        prevLatlong = latlong;
      }

      lastDisplayTime = millis();
    }
  }
}

void printGPSinfo() {
  DEBUG_GPS("----------------------------------------");

  getGPStime(gpsTime);
  DEBUG_GPS("Time: " + gpsTime);

  getGPSdate(gpsDate);
  DEBUG_GPS("Date: " + gpsDate);

  getLatLong(&latlong);
  convertLatLongToString(&latlong, gpsLatLong);
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
