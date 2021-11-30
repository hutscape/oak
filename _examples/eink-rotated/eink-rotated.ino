#include <SPI.h>

#include "epd1in54.h"
#include "epdpaint.h"

#define COLORED 0
#define UNCOLORED 1

const char latlong[] = "1.40N, 103.91E";
const char haversine[] = "300m";
const char last_timestamp[] = "00:10 ago";

unsigned char image[1024];
Paint paint(image, 0, 0);
Epd epd;
unsigned long time_start_ms;
unsigned long time_now_s;

void setup() {
  SerialUSB.begin(9600);
  while (!SerialUSB) { }

  SerialUSB.println("E-Ink rotated information example... \n");
  if (epd.Init(lut_full_update) != 0) {
    SerialUSB.println("e-Paper init failed");
    return;
  }

  epd.ClearFrameMemory(0xFF);
  epd.DisplayFrame();
  epd.ClearFrameMemory(0xFF);
  epd.DisplayFrame();

  paint.SetRotate(ROTATE_0);
  paint.SetWidth(200);
  paint.SetHeight(24);

  paint.Clear(COLORED);
  paint.DrawStringAt(10, 4, "Current position", &Font16, UNCOLORED);
  epd.SetFrameMemory(
    paint.GetImage(), 0, 10, paint.GetWidth(), paint.GetHeight());

  paint.Clear(UNCOLORED);
  paint.DrawStringAt(20, 4, latlong, &Font16, COLORED);
  epd.SetFrameMemory(
    paint.GetImage(), 0, 30, paint.GetWidth(), paint.GetHeight());
  SerialUSB.println("Displayed sample lat-long");

  paint.SetWidth(50);
  paint.SetHeight(120);
  paint.SetRotate(ROTATE_270);

  paint.Clear(COLORED);
  paint.DrawStringAt(15, 6, haversine, &Font24, UNCOLORED);
  paint.DrawStringAt(15, 34, last_timestamp, &Font16, UNCOLORED);
  epd.SetFrameMemory(paint.GetImage(),
    80, 72, paint.GetWidth(), paint.GetHeight());
  SerialUSB.println("Displayed sample Haversine distance and last timestamp");

  epd.DisplayFrame();
  delay(1000);
}

void loop() {}
