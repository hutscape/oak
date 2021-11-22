#include "src/lora/lora.h"

// Ensure 2 nodes are flashed with the same sketch
// Just exchange the node addresses below
byte localAddress = 0xBB;
byte destinationAddress = 0xAA;

int counter = 0;
int interval = 3000;
long lastSendTime = 0;

String incoming = "";

void setup() {
  SerialUSB.begin(9600);
  while (!SerialUSB) { }

  SerialUSB.println("Starting Oak demo on node "
    + String(localAddress, HEX));

  if (!initLoRa()) {
    SerialUSB.println("Starting LoRa failed!");
  }
}

void loop() {
  if (millis() - lastSendTime > interval) {
    String sensorData = String(counter++);
    sendLoRa(sensorData, localAddress, destinationAddress);

    SerialUSB.print("Send data " + sensorData);
    SerialUSB.print(" from 0x" + String(localAddress, HEX));
    SerialUSB.println(" to 0x" + String(destinationAddress, HEX));

    lastSendTime = millis();
    interval = random(2000) + 1000;
  }

  if (receiveLoRa(LoRa.parsePacket(), localAddress, incoming)) {
    SerialUSB.print("Received data " + incoming);
    SerialUSB.print(" from 0x" + String(destinationAddress, HEX));
    SerialUSB.println(" to 0x" + String(localAddress, HEX));
  }
}
