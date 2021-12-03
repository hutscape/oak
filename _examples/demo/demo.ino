#define DEBUG  // Comment to turn off debug statements

#include "src/debug/debug.h"
#include "src/gps/gps.h"
#include "src/eink/eink.h"
#include "src/lora/lora.h"

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
String latlong;
String previousLatlong;

void setup() {
  #ifdef DEBUG
  SerialUSB.begin(9600);
  while (!SerialUSB) { }
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
      if (latlong != previousLatlong) {
        displayOnEink(latlong, gpsTime);
        previousLatlong = latlong;
      }

      lastDisplayTime = millis();
    }
  }
}

void printGPSinfo() {
  DEBUG_PRINT_SIMPLE("\n");

  getGPStime(gpsTime);
  DEBUG_PRINT_MORE("Time: " + gpsTime);

  getGPSdate(gpsDate);
  DEBUG_PRINT_MORE("Date: " + gpsDate);

  getLatLong(latlong);
  DEBUG_PRINT_MORE("Lat/Long: " + latlong);

  DEBUG_PRINT_MORE("GPS Fix? " + (int)getGPSfix());
  DEBUG_PRINT_MORE("GPS Fix quality: " + (int)getGPSfixquality());
  DEBUG_PRINT_MORE("Speed (knots): " + String(getGPSspeed()));
  DEBUG_PRINT_MORE("Angle: " + String(getGPSangle()));
  DEBUG_PRINT_MORE("Altitude: " + String(getGPSaltitude()));
  DEBUG_PRINT_MORE("Satellites: " + String(getGPSsatellites()));

  DEBUG_PRINT_MORE("Time [s] since last fix: "
    + String(getGPStimeSinceLastFix(), 3));
  DEBUG_PRINT_MORE("    since last GPS time: "
    + String(getGPSlastTime(), 3));
  DEBUG_PRINT_MORE("    since last GPS date: "
    + String(getGPSlastDate(), 3));
}
