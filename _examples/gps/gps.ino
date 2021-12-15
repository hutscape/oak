#define GPSSerial Serial1
#define GPSRST 3

void setup() {
  SerialUSB.begin(9600);
  GPSSerial.begin(9600);

  SerialUSB.println("Starting GPS with UART...");

  pinMode(GPSRST, OUTPUT);
  digitalWrite(GPSRST, HIGH);
}

void loop() {
  if (SerialUSB.available()) {
    char c = SerialUSB.read();
    GPSSerial.write(c);
  }
  if (GPSSerial.available()) {
    char c = GPSSerial.read();
    SerialUSB.write(c);
  }
}
