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

void displayOnEink(String latlong, String timestamp, String haversine) {
  char convertLatlong[16];  // Example "1.40N, 1.03E"
  latlong.toCharArray(convertLatlong, 16);

  char convertTimestamp[6];  // Example "02:16"
  timestamp.toCharArray(convertTimestamp, 6);

  char convertHaversine[10];  // Example "0.3km"
  haversine.toCharArray(convertHaversine, 10);

  // TODO: Display relative time ago when Haversine distance was calculated
  const char last_timestamp[] = "for peer";

  // Display current node's GPS and timestamp
  paint.SetWidth(200);
  paint.SetHeight(24);
  paint.SetRotate(ROTATE_0);

  paint.Clear(COLORED);
  paint.DrawStringAt(10, 4, convertLatlong, &Font16, UNCOLORED);
  epd.SetFrameMemory(
    paint.GetImage(), 0, 10, paint.GetWidth(), paint.GetHeight());

  paint.Clear(UNCOLORED);
  paint.DrawStringAt(10, 4, convertTimestamp, &Font16, COLORED);
  epd.SetFrameMemory(
    paint.GetImage(), 0, 30, paint.GetWidth(), paint.GetHeight());

  // Display Haversine distance and relative time with peer node
  paint.SetWidth(50);
  paint.SetHeight(120);
  paint.SetRotate(ROTATE_270);

  paint.Clear(COLORED);
  paint.DrawStringAt(12, 10, convertHaversine, &Font16, UNCOLORED);
  paint.DrawStringAt(12, 32, last_timestamp, &Font16, UNCOLORED);
  epd.SetFrameMemory(
      paint.GetImage(), 80, 72, paint.GetWidth(), paint.GetHeight());

  epd.DisplayFrame();
}
