#include "eink_v2.h"

Epd epd;
unsigned char image[1024];
Paint paint(image, 0, 0);

int count = 0;
char count_string[] = {'0', '0', '0', '\0'};

bool initEink() {
  epd.LDirInit();
  epd.Clear();

  return true;
}

void displayOnEink(String latlong, String timestamp) {
  char convertLatlong[16] = "waiting for fix";  // Example "1 40N, 103 91E";
  latlong.toCharArray(convertLatlong, 16);

  char convertTimestamp[6] = "00:00";  // Example "02:16";
  timestamp.toCharArray(convertTimestamp, 6);

  paint.SetWidth(200);
  paint.SetHeight(24);

  paint.Clear(COLORED);
  paint.DrawStringAt(30, 4, convertLatlong, &Font16, UNCOLORED);
  epd.SetFrameMemory(
    paint.GetImage(), 0, 10, paint.GetWidth(), paint.GetHeight());

  paint.Clear(UNCOLORED);
  paint.DrawStringAt(30, 4, convertTimestamp, &Font16, COLORED);
  epd.SetFrameMemory(
    paint.GetImage(), 0, 30, paint.GetWidth(), paint.GetHeight());

  epd.DisplayFrame();
  epd.Sleep();
}
