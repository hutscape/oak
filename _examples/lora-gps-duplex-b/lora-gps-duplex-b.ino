#define DEBUG  // Uncomment to enable verbose debug prints

#include "src/gps/gps.h"
#include "src/led/led.h"
#include "src/lora/lora.h"

byte localAddress = 0xBB;
byte destinationAddress = 0xAA;

long lastSendTime = 0;
int interval = 2000;

String incoming = "";
String gpsTime = "10:00:23";
String gpsDate = "2021-12-31";
String latlongInString = "";
LatLong latlong = {0.00, 0.00};
LatLong prevLatlong = {0.00, 0.00};

void setup() {
  SerialUSB.begin(9600);
  initLED();

  SerialUSB.println("Starting LoRa duplex on node "
    + String(localAddress, HEX));

  if (!initLoRa()) {
    SerialUSB.println("Starting LoRa failed!");
  }

  initGPS();
}

void loop() {
  if (millis() - lastSendTime > interval) {
    if (hasNewGPSFix(&prevLatlong, &latlong)) {
      convertLatLongToString(&latlong, latlongInString);
      sendLoRa(latlongInString, localAddress, destinationAddress);

      SerialUSB.print("\nSending lat-long " + latlongInString);
      SerialUSB.print(" from 0x" + String(localAddress, HEX));
      SerialUSB.println(" to 0x" + String(destinationAddress, HEX));
      SerialUSB.println("Lat/Long: "
        + String(latlong.latitude, 8)
        + " / "
        + String(latlong.longitude, 8));

      prevLatlong = latlong;
    } else {
      if (latlong->latitude == 0.00 && latlong->longitude == 0.00) {
        SerialUSB.println("No GPS fix");
      } else {
        SerialUSB.println("No new GPS location");
      }
    }

    lastSendTime = millis();
    interval = random(2000) + 1000;

    toggleLED();
  }

  if (receiveLoRa(LoRa.parsePacket(), localAddress, incoming)) {
    SerialUSB.println("Received lat-long "
      + incoming
      + " from 0x"
      + String(destinationAddress, HEX)
      + " to 0x"
      + String(localAddress, HEX));
  }

  if (receivedGPSfix()) {
    getLatLong(&latlong);

    #ifdef DEBUG
      printGPSinfo();
    #endif
  }
}

void printGPSinfo() {
  getGPStime(gpsTime);
  SerialUSB.println("\nTime: " + gpsTime);

  getGPSdate(gpsDate);
  SerialUSB.println("Date: " + gpsDate);

  SerialUSB.println("Lat/Long: "
    + String(latlong.latitude, 8)
    + " / "
    + String(latlong.longitude, 8));

  SerialUSB.println("GPS Fix? "
    + (int)getGPSfix());
  SerialUSB.println("GPS Fix quality: "
    + (int)getGPSfixquality());
  SerialUSB.println("Speed (knots): " + String(getGPSspeed()));
  SerialUSB.println("Angle: " + String(getGPSangle()));
  SerialUSB.println("Altitude: " + String(getGPSaltitude()));
  SerialUSB.println("Satellites: " + String(getGPSsatellites()));

  SerialUSB.println("Time [s] since last fix: "
    + String(getGPStimeSinceLastFix(), 3));
  SerialUSB.println("    since last GPS time: "
    + String(getGPSlastTime(), 3));
  SerialUSB.println("    since last GPS date: "
    + String(getGPSlastDate(), 3));
}
