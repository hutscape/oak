#define GPSSerial Serial1

void setup() {
  SerialUSB.begin(115200);
  GPSSerial.begin(9600);

  SerialUSB.println("Starting GPS with UART...");
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
