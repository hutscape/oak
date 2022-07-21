// PA14 is Pin 2
// https://github.com/arduino/ArduinoCore-samd/blob/master/variants/arduino_zero/variant.cpp#L26
#define LEDPIN 2

void setup() {
  pinMode(LEDPIN, OUTPUT);
  SerialUSB.begin(9600);
}

void loop() {
  digitalWrite(LEDPIN, HIGH);
  SerialUSB.println("HIGH");
  delay(2000);

  digitalWrite(LEDPIN, LOW);
  SerialUSB.println("LOW");
  delay(2000);
}
