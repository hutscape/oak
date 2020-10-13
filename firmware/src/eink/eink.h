#include "Arduino.h"

#define RST_PIN         8
#define DC_PIN          9
#define CS_PIN          10
#define BUSY_PIN        7

#define EINK_CS CS_PIN

bool initEink();
void clearEink();
void setEink();
void displayEink(int x, int y, const char* text);
