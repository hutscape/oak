#include <SPI.h>

#include "epd1in54.h"
#include "epdpaint.h"

#define COLORED 0
#define UNCOLORED 1

unsigned char image[1024];
Paint paint(image, 0, 0);  // width should be the multiple of 8
Epd epd;
int count = 0;
char count_string[] = {'0', '0', '0', '\0'};

void setup() {
  Serial.begin(9600);

  Serial.print("e-Paper init ");
  if (epd.Init(lut_full_update) != 0) {
    Serial.print("e-Paper init failed");
    return;
  }
}

void loop() {
  sprintf(count_string, "%d", ++count);
  SerialUSB.println(count_string);

  epd.ClearFrameMemory(0xFF);  // bit set = white, bit reset = black
  epd.DisplayFrame();
  epd.ClearFrameMemory(0xFF);  // bit set = white, bit reset = black
  epd.DisplayFrame();

  paint.SetWidth(50);
  paint.SetHeight(120);
  paint.SetRotate(ROTATE_270);

  paint.Clear(COLORED);
  paint.DrawStringAt(10, 4, "hello", &Font24, UNCOLORED);
  paint.DrawStringAt(10, 30, count_string, &Font24, UNCOLORED);
  epd.SetFrameMemory(paint.GetImage(),
    80, 72, paint.GetWidth(), paint.GetHeight());
  epd.DisplayFrame();

  delay(1000);
  epd.Sleep();
}
