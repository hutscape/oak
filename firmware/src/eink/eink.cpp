#include <SPI.h>
#include "epd1in54.h"
#include "epdpaint.h"

#define COLORED     0
#define UNCOLORED   1

Epd epd;
unsigned char image[1024];
Paint paint(image, 0, 0);

bool initEink() {
    if (epd.Init(lut_full_update) != 0) {
        return false;
    }

    return true;
}

void clearEink() {
    epd.ClearFrameMemory(0xFF);
    epd.DisplayFrame();
    epd.ClearFrameMemory(0xFF);
    epd.DisplayFrame();
}

void setEink() {
    paint.SetRotate(ROTATE_0);
    paint.SetWidth(200);
    paint.SetHeight(24);
}

void displayEink(int x, int y, const char* text) {
    paint.Clear(UNCOLORED);
    paint.DrawStringAt(10, 4, text, &Font16, COLORED);
    epd.SetFrameMemory(paint.GetImage(), x, y, paint.GetWidth(), paint.GetHeight());
    epd.DisplayFrame();
    epd.Sleep();
}
