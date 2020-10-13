#define DEBUG

#include "DebugUtils.h"
#include "src/eink/eink.h"
#include "src/gps/gps.h"
#include <SPI.h>
#include <LoRa.h>

const int csPin = 5;
const int resetPin = 6;
const int irqPin = 1;

byte localAddress = 0xAA;
byte destinationAddress = 0xBB;
long lastSendTime = 0;
int interval = 2000;

int count = 0;
char count_string[] = {'1', '2', '3'};

void setup() {
    #ifdef DEBUG
    SerialUSB.begin(9600);
    while (!SerialUSB) { }
    #endif

    DEBUG_TITLE("Start Oak: With GPS, LoRa and E-ink...");

    LoRa.setPins(csPin, resetPin, irqPin);

    if (!LoRa.begin(433E6)) {
        // FIXME: LoRa is not working E-ink because of SPI conflict in hardware
        SerialUSB.println("LoRa init failed. Check your connections.");
        while (true) {}
    }

    initGPS();
}

void loop() {
    count++;

    count_string[2] = count % 10 + '0';
    count_string[1] = count / 10 % 10 + '0';
    count_string[0] = count / 100 + '0';

    DEBUG_PRINT(count_string);

    // E-ink
    if (!initEink()) {
        DEBUG_TITLE("E-ink initialization failed");
    }

    clearEink();
    setEink();
    displayEink(0, 50, count_string);

    delay(2000);

    // GPS
    if (!isNMEAReceived()) {
        return;
    }

    displayGPS();

    // LoRa
    if (millis() - lastSendTime > interval) {
    String sensorData = String(count);
    sendMessage(sensorData);

    SerialUSB.print("Sending data " + sensorData);
    SerialUSB.print(" from 0x" + String(localAddress, HEX));
    SerialUSB.println(" to 0x" + String(destinationAddress, HEX));

    lastSendTime = millis();
    interval = random(2000) + 1000;
  }

    receiveMessage(LoRa.parsePacket());
}

void sendMessage(String outgoing) {
  LoRa.beginPacket();
  LoRa.write(destinationAddress);
  LoRa.write(localAddress);
  LoRa.write(outgoing.length());
  LoRa.print(outgoing);
  LoRa.endPacket();
}

void receiveMessage(int packetSize) {
  if (packetSize == 0) return;

  int recipient = LoRa.read();
  byte sender = LoRa.read();
  byte incomingLength = LoRa.read();

  String incoming = "";

  while (LoRa.available()) {
    incoming += (char)LoRa.read();
  }

  if (incomingLength != incoming.length()) {
    SerialUSB.println("Error: Message length does not match length");
    return;
  }

  if (recipient != localAddress) {
    SerialUSB.println("Error: Recipient address does not match local address");
    return;
  }

  SerialUSB.print("Received data " + incoming);
  SerialUSB.print(" from 0x" + String(sender, HEX));
  SerialUSB.println(" to 0x" + String(recipient, HEX));
}
