#include "led.h"

void initLED() {
  // Configure LED pin as output
  pinMode(LEDPIN, OUTPUT);
  digitalWrite(LEDPIN, LOW);
}

void toggleLED() {
  // Toggle LED
  digitalWrite(LEDPIN, !digitalRead(LEDPIN));
}

void fastBlink(int number) {
  for (int i = 0; i < number; i++) {
    toggleLED();
    delay(250);

    toggleLED();
    delay(250);
  }
}
