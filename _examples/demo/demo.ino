#include "src/gps/gps.h"
#include "src/lora/lora.h"
#include "src/eink/eink.h"

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
String gpsTime;
String gpsDate;
String latlong;

void setup() {
  SerialUSB.begin(9600);
  while (!SerialUSB) { }

  SerialUSB.println("Starting Oak demo on node "
    + String(localAddress, HEX));

  if (!initLoRa()) {
    SerialUSB.println("Starting LoRa failed!");
  }

  if (!initEink()) {
    SerialUSB.println("Starting Eink failed!");
  }

  initGPS();
}

void loop() {
  if (millis() - lastSendTime > sendInterval) {
    String sensorData = String(counter++);
    sendLoRa(sensorData, localAddress, destinationAddress);

    SerialUSB.print("Send data " + sensorData);
    SerialUSB.print(" from 0x" + String(localAddress, HEX));
    SerialUSB.println(" to 0x" + String(destinationAddress, HEX));

    lastSendTime = millis();
    sendInterval = random(2000) + 1000;
  }

  if (receiveLoRa(LoRa.parsePacket(), localAddress, incoming)) {
    SerialUSB.print("Received data " + incoming);
    SerialUSB.print(" from 0x" + String(destinationAddress, HEX));
    SerialUSB.println(" to 0x" + String(localAddress, HEX));
  }

  if (receivedGPSfix()) {
    getGPStime(gpsTime);
    SerialUSB.print("Time: ");
    SerialUSB.println(gpsTime);

    getGPSdate(gpsDate);
    SerialUSB.print("Date: ");
    SerialUSB.println(gpsDate);

    getLatLong(latlong);
    SerialUSB.print("Lat/Long: ");
    SerialUSB.println(latlong);

    if (millis() - lastDisplayTime > displayInterval) {
      // TODO: Display only if latlong value has changed
      displayLatLong(latlong);
      lastDisplayTime = millis();
    }
  }
}
