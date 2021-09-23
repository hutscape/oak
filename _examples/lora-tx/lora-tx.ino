#include <LoRa.h>
#include <SPI.h>

int counter = 0;
#define LEDPIN 2

#define RADIO_CS_PIN 5  // D5 on Arduino Zero
#define RADIO_DI0_PIN 11  // D11 on Arduino Zero
#define RADIO_RST_PIN 6  // D6 on Arduino Zero
#define LORA_FREQUENCY 915E6  // 915 MHz Antenna and LoRa module

void setup() {
  SerialUSB.begin(9600);
  while (!SerialUSB) { }

  SerialUSB.println("LoRa Sender");
  pinMode(LEDPIN, OUTPUT);

  LoRa.setPins(RADIO_CS_PIN, RADIO_RST_PIN, RADIO_DI0_PIN);

  if (!LoRa.begin(LORA_FREQUENCY)) {
    SerialUSB.println("Starting LoRa failed!");
    while (1) {
    }
  }
}

void loop() {
  SerialUSB.print("Sending packet: ");
  SerialUSB.println(counter);

  LoRa.beginPacket();
  LoRa.print(counter);
  LoRa.endPacket();

  counter++;
  blink(2);
  delay(2000);
}

void blink(int num) {
  for (int i = 0; i < num; i++) {
    digitalWrite(LEDPIN, HIGH);
    delay(250);

    digitalWrite(LEDPIN, LOW);
    delay(250);
  }
}
