#include <LoRa.h>
#include <SPI.h>

int counter = 0;
#define LEDPIN 2
int ledState = LOW;

#define RADIO_CS_PIN 5        // D5 on Arduino Zero
#define RADIO_DI0_PIN 11      // D11 on Arduino Zero
#define RADIO_RST_PIN 6       // D6 on Arduino Zero
#define LORA_FREQUENCY 915E6  // 915 MHz Antenna and LoRa module

byte localAddress = 0xBB;
byte destinationAddress = 0xAA;
long lastSendTime = 0;
int interval = 2000;

void setup() {
  SerialUSB.begin(9600);
  pinMode(LEDPIN, OUTPUT);

  SerialUSB.println("Starting LoRa duplex on node " + String(localAddress, HEX));
  pinMode(LEDPIN, OUTPUT);

  LoRa.setPins(RADIO_CS_PIN, RADIO_RST_PIN, RADIO_DI0_PIN);

  if (!LoRa.begin(LORA_FREQUENCY)) {
    SerialUSB.println("Starting LoRa failed!");
    while (1) {
    }
  }
}

void loop() {
  if (millis() - lastSendTime > interval) {
    String sensorData = String(counter++);
    sendMessage(sensorData);

    SerialUSB.print("Sending data " + sensorData);
    SerialUSB.print(" from 0x" + String(localAddress, HEX));
    SerialUSB.println(" to 0x" + String(destinationAddress, HEX));

    lastSendTime = millis();
    interval = random(2000) + 1000;

    // Toggle LED
    ledState = !ledState;
    digitalWrite(LEDPIN, ledState);
    SerialUSB.println("LED state " + String(ledState));
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
