// #define DEBUG

#include "DebugUtils.h"
#include "src/eink/eink.h"
#include "src/gps/gps.h"

int count = 0;
char count_string[] = {'1', '2', '3'};

void setup() {
    #ifdef DEBUG
    SerialUSB.begin(9600);
    while (!SerialUSB) { }
    #endif

    DEBUG_TITLE("Start Oak...");

    initGPS();
}

void loop() {
    count++;

    count_string[2] = count % 10 + '0';
    count_string[1] = count / 10 % 10 + '0';
    count_string[0] = count / 100 + '0';

    DEBUG_PRINT(count_string);

    if (!initEink()) {
        DEBUG_TITLE("E-ink initialization failed");
    }

    clearEink();
    setEink();
    displayEink(0, 50, count_string);

    delay(2000);

    if (!isNMEAReceived()) {
        return;
    }

    displayGPS();
}
