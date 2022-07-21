#define VBATPIN A0
#define LEDPIN 2

void setup() {
  pinMode(LEDPIN, OUTPUT);

  SerialUSB.begin(9600);
  delay(1000);

  SerialUSB.println("Start battery voltage measurement!");
}

void loop() {
  float measuredvbat = analogRead(VBATPIN);

  for (int i = 0; i < 10; i++) {
    measuredvbat += analogRead(VBATPIN);
    delay(10);
  }

  // Take the average of 10 analog values
  measuredvbat /= 10;

  SerialUSB.print("Analog read: ");
  SerialUSB.print(measuredvbat);

  // Potential divider of equal resistance
  measuredvbat *= 2;

  // Or the reference voltage E.g. 2.8V, 3.3V, 5V, 3.7V
  measuredvbat *= 3.3;

  // Measured digital value with multimeter (instead of 1024)
  // Convert to voltage
  measuredvbat /= 1125;


  SerialUSB.print("   VBat: ");
  SerialUSB.print(measuredvbat);
  SerialUSB.println("V");

  digitalWrite(LEDPIN, HIGH);
  SerialUSB.println("HIGH");
  delay(2000);

  digitalWrite(LEDPIN, LOW);
  SerialUSB.println("LOW");
  delay(2000);
}
