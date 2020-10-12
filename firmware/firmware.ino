#include "src/eink/eink.h"
#include "src/gps/gps.h"

int count = 0;
char count_string[] = {'1', '2', '3'};

void setup() {
    SerialUSB.begin(9600);
    while (!SerialUSB) { }
    SerialUSB.println("Start E-ink display...");

    initGPS();
}

void loop() {
    count++;

    count_string[2] = count % 10 + '0';
    count_string[1] = count / 10 % 10 + '0';
    count_string[0] = count / 100 + '0';

    // SerialUSB.println(count_string);

    if (!initEink()) {
        SerialUSB.print("e-Paper init failed");
    }

    clearEink();
    setEink();
    displayEink(0, 50, count_string);

    delay(2000);
    // char c = GPS.read();

    if (!isNMEAReceived()) {
        return;
    }

    displayGPS();
}
