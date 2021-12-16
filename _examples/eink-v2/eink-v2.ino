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
  epd.LDirInit();
  epd.Clear();

  paint.SetWidth(200);
  paint.SetHeight(24);

  SerialUSB.println("e-Paper paint");
  paint.Clear(COLORED);
  paint.DrawStringAt(30, 4, "Hello world!", &Font16, UNCOLORED);
  epd.SetFrameMemory(
    paint.GetImage(), 0, 10, paint.GetWidth(), paint.GetHeight());

  paint.Clear(UNCOLORED);
  paint.DrawStringAt(30, 4, "e-Paper Demo", &Font16, COLORED);
  epd.SetFrameMemory(
    paint.GetImage(), 0, 30, paint.GetWidth(), paint.GetHeight());

  epd.DisplayFrame();
  delay(2000);

  SerialUSB.println("e-Paper goto sleep");
  epd.Sleep();
}

void loop() {
  sprintf(count_string, "%d", ++count);

  paint.Clear(UNCOLORED);
  paint.DrawStringAt(10, 10, count_string, &Font16, COLORED);
  epd.SetFrameMemoryPartial(
    paint.GetImage(), 80, 70, paint.GetWidth(), paint.GetHeight());
  epd.DisplayPartFrame();
  SerialUSB.println("e-Paper print " + String(count_string));

  delay(2000);
}
