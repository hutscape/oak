#include <SPI.h>

#include "epd1in54.h"
#include "epdpaint.h"

#define COLORED 0
#define UNCOLORED 1

bool initEink();
void displayOnEink(String, String, String);