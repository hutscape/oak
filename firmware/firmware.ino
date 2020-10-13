#define DEBUG

#include "DebugUtils.h"
#include <SPI.h>
#include <LoRa.h>
#include "src/eink/eink.h"
#include "src/gps/gps.h"

const int csPin = 5;
const int resetPin = 6;
const int irqPin = 1;
#define LORA_CS csPin

byte localAddress = 0xAA;
byte destinationAddress = 0xBB;
long lastSendTime = 0;
int interval = 2000;

int count = 0;
char count_string[] = {'0', '0', '0','\0'};

void setup() {
  #ifdef DEBUG
  SerialUSB.begin(9600);
  while (!SerialUSB) { }
  #endif

  DEBUG_TITLE("Start Oak: With GPS, LoRa and E-ink...");

  enableLoRa();
  LoRa.setPins(csPin, resetPin, irqPin);

  // TODO: Buy 915MHz hardware and use 915E6 frequency
  if (!LoRa.begin(433E6)) {
      // FIXME: LoRa is not working E-ink because of SPI conflict in hardware
      SerialUSB.println("LoRa init failed. Check your connections.");
  }

  // initGPS();
}

void loop() {
    count++;

    count_string[2] = count % 10 + '0';
    count_string[1] = count / 10 % 10 + '0';
    count_string[0] = count / 100 + '0';

    DEBUG_PRINT(count_string);

    // LoRa
    enableLoRa();
    if (millis() - lastSendTime > interval) {
      String sensorData = String(count);
      // FIXME: sendMessage() is not working
      // sendMessage(sensorData);

      // FIXME: Move these prints inside sendMessage()
      SerialUSB.print("Sending data " + sensorData);
      SerialUSB.print(" from 0x" + String(localAddress, HEX));
      SerialUSB.println(" to 0x" + String(destinationAddress, HEX));

      lastSendTime = millis();
      interval = random(2000) + 1000;
    }

    receiveMessage(LoRa.parsePacket());

    // E-ink
    enableEink();
    if (!initEink()) {
        DEBUG_TITLE("E-ink initialization failed");
    }

    clearEink();
    setEink();
    displayEink(0, 50, count_string);

    delay(1000);

    // GPS
    // if (!isNMEAReceived()) {
    //     return;
    // }

    // displayGPS();
}

void enableLoRa() {
  digitalWrite(LORA_CS, LOW);
  digitalWrite(EINK_CS, HIGH);
}

void enableEink() {
  digitalWrite(EINK_CS, LOW);
  digitalWrite(LORA_CS, HIGH);
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
