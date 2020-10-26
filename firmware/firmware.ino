#define DEBUG

#include "DebugUtils.h"

#include "src/lora/lora.h"
#include "src/eink/eink.h"
#include "src/gps/gps.h"

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

  if(!initLora()) {
    DEBUG_PRINT("LoRa init failed. Check your connections.");
  }

  // initGPS();
}

void loop() {
  if (millis() - lastSendTime > interval) {
    // count
    sprintf(count_string, "%d", ++count);
    DEBUG_PRINT(count_string);
    String sensorData = String(count);

    // E-ink
    if (!initEink()) {
      DEBUG_TITLE("E-ink initialization failed");
    }

    clearEink();
    setEink();
    displayEink(0, 50, count_string);

    // LoRa send
    sendMessage(sensorData);

    lastSendTime = millis();
    interval = random(2000) + 1000;
  }

  // LoRa receive
  receiveMessage();
}
