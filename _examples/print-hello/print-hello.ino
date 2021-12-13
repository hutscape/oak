void setup() {
  SerialUSB.begin(9600);
  delay(100);

  SerialUSB.println("Start!");
}

void loop() {
  SerialUSB.println("HIGH");
  delay(500);

  SerialUSB.println("LOW");
  delay(500);
}
