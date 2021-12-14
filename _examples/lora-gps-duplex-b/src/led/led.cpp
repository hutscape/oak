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
