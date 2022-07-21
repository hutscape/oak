#include <SPI.h>
#include "epd1in54_V2.h"
#include "epdpaint.h"

Epd epd;
unsigned char image[1024];
Paint paint(image, 0, 0);

#define COLORED     0
#define UNCOLORED   1

int count = 0;
char count_string[] = {'0', '0', '0', '\0'};

void setup() {
  SerialUSB.begin(9600);
  SerialUSB.println("e-Paper init");
  initEink();
  delay(1000);
}

void loop() {
  displayOnEink();
  delay(2000);
}

bool initEink() {
  epd.LDirInit();
  epd.Clear();

  return true;
}

void displayOnEink() {
  sprintf(count_string, "%d", ++count);

  paint.SetWidth(200);
  paint.SetHeight(24);
  paint.SetRotate(ROTATE_0);

  paint.Clear(COLORED);
  paint.DrawStringAt(10, 4, "Lat Long!", &Font16, UNCOLORED);
  epd.SetFrameMemory(
      paint.GetImage(), 0, 10, paint.GetWidth(), paint.GetHeight());

  paint.Clear(UNCOLORED);
  paint.DrawStringAt(10, 4, "at ", &Font16, COLORED);
  paint.DrawStringAt(40, 4, "00:00", &Font16, COLORED);
  epd.SetFrameMemory(
      paint.GetImage(), 0, 30, paint.GetWidth(), paint.GetHeight());

  paint.SetWidth(50);
  paint.SetHeight(120);
  paint.SetRotate(ROTATE_270);

  paint.Clear(COLORED);
  paint.DrawStringAt(12, 10, count_string, &Font16, UNCOLORED);
  paint.DrawStringAt(12, 32, count_string, &Font16, UNCOLORED);
  epd.SetFrameMemory(
      paint.GetImage(), 80, 72, paint.GetWidth(), paint.GetHeight());

  epd.DisplayFrame();
  SerialUSB.println("e-Paper print " + String(count_string));
}
