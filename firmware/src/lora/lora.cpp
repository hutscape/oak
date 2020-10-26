#include <SPI.h>
#include <LoRa.h>

const int csPin = 5;
const int resetPin = 6;
const int irqPin = 1;

byte localAddress = 0xAA;
byte destinationAddress = 0xBB;

bool initLora() {
    LoRa.setPins(csPin, resetPin, irqPin);

    if (!LoRa.begin(433E6)) {
        return false;
    }

    return true;
}

void sendMessage(String outgoing) {
  SerialUSB.print("Sending data " + outgoing);
  SerialUSB.print(" from 0x" + String(localAddress, HEX));
  SerialUSB.println(" to 0x" + String(destinationAddress, HEX));

  LoRa.beginPacket();
  LoRa.write(destinationAddress);
  LoRa.write(localAddress);
  LoRa.write(outgoing.length());
  LoRa.print(outgoing);
  LoRa.endPacket();
}

void receiveMessage() {
  if (LoRa.parsePacket() == 0) return;

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
