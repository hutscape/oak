#include <LoRa.h>
#include <SPI.h>

#define RADIO_CS_PIN 5        // D5 on Arduino Zero
#define RADIO_DI0_PIN 11      // D11 on Arduino Zero
#define RADIO_RST_PIN 6       // D6 on Arduino Zero
#define LORA_FREQUENCY 915E6  // 915 MHz Antenna and LoRa module

void setup() {
  SerialUSB.begin(9600);
  while (!SerialUSB) {
  }

  SerialUSB.println("Starting LoRa Receiver...");

  LoRa.setPins(RADIO_CS_PIN, RADIO_RST_PIN, RADIO_DI0_PIN);

  if (!LoRa.begin(LORA_FREQUENCY)) {
    SerialUSB.println("Starting LoRa failed!");
    while (1) {
    }
  }
}

void loop() {
  int packetSize = LoRa.parsePacket();
  if (packetSize) {
    SerialUSB.print("Received packet '");

    while (LoRa.available()) {
      SerialUSB.print((char)LoRa.read());
    }

    SerialUSB.print("' with RSSI ");
    SerialUSB.println(LoRa.packetRssi());
  }
}
