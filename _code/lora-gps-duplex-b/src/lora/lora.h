#include <LoRa.h>
#include <SPI.h>

#define RADIO_CS_PIN 5        // D5 on Arduino Zero
#define RADIO_DI0_PIN 11      // D11 on Arduino Zero
#define RADIO_RST_PIN 6       // D6 on Arduino Zero
#define LORA_FREQUENCY 915E6  // 915 MHz Antenna and LoRa module

bool initLoRa();
void sendLoRa(String, byte, byte);
bool receiveLoRa(int, byte, String &);
