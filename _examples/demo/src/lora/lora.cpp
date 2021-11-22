#include "lora.h"

bool initLoRa() {
  LoRa.setPins(RADIO_CS_PIN, RADIO_DI0_PIN, RADIO_RST_PIN);

  if (!LoRa.begin(LORA_FREQUENCY)) {
    return false;
  }

  return true;
}

void sendLoRa(String outgoing, byte localAddress, byte destinationAddress) {
  LoRa.beginPacket();
  LoRa.write(destinationAddress);
  LoRa.write(localAddress);
  LoRa.write(outgoing.length());
  LoRa.print(outgoing);
  LoRa.endPacket();
}

bool receiveLoRa(int packetSize, byte localAddress, String &incoming) {
  if (packetSize == 0) {
    return false;
  }

  int recipient = LoRa.read();
  byte sender = LoRa.read();
  byte incomingLength = LoRa.read();

  incoming = "";

  while (LoRa.available()) {
    incoming += (char)LoRa.read();
  }

  if (incomingLength != incoming.length()) {
    SerialUSB.println("Error: Message length does not match length");
    return false;
  }

  if (recipient != localAddress) {
    SerialUSB.println("Error: Recipient address does not match local address");
    return false;
  }

  return true;
}
