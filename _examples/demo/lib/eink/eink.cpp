#include "eink.h"

const char latlong[] = "1.40N, 103.91E";
const char haversine[] = "300m";
const char last_timestamp[] = "00:10 ago";

unsigned char image[1024];
Paint paint(image, 0, 0);
Epd epd;
unsigned long time_start_ms;
unsigned long time_now_s;

bool initEink() {
  if (epd.Init(lut_full_update) != 0) {
    return false;
  }

  return true;
}

// TODO: Add 3rd argument to display Haversine distance
void displayOnEink(String latlong, String timestamp) {
  const char haversine[] = "searching";
  const char last_timestamp[] = "no peer";

  char convertLatlong[16] = "waiting for fix";  // Example "1 40N, 103 91E";
  latlong.toCharArray(convertLatlong, 16);

  char convertTimestamp[6] = "00:00";  // Example "02:16";
  timestamp.toCharArray(convertTimestamp, 6);

  epd.ClearFrameMemory(0xFF);
  epd.DisplayFrame();
  epd.ClearFrameMemory(0xFF);
  epd.DisplayFrame();

  paint.SetRotate(ROTATE_0);
  paint.SetWidth(200);
  paint.SetHeight(24);

  paint.Clear(COLORED);
  paint.DrawStringAt(10, 4, convertLatlong, &Font16, UNCOLORED);
  epd.SetFrameMemory(
      paint.GetImage(), 0, 10, paint.GetWidth(), paint.GetHeight());

  paint.Clear(UNCOLORED);
  paint.DrawStringAt(10, 4, "at ", &Font16, COLORED);
  paint.DrawStringAt(40, 4, convertTimestamp, &Font16, COLORED);
  epd.SetFrameMemory(
      paint.GetImage(), 0, 30, paint.GetWidth(), paint.GetHeight());

  paint.SetWidth(50);
  paint.SetHeight(120);
  paint.SetRotate(ROTATE_270);

  paint.Clear(COLORED);
  paint.DrawStringAt(12, 10, haversine, &Font16, UNCOLORED);
  paint.DrawStringAt(12, 32, last_timestamp, &Font16, UNCOLORED);
  epd.SetFrameMemory(
    paint.GetImage(), 80, 72, paint.GetWidth(), paint.GetHeight());

  epd.DisplayFrame();
  epd.Sleep();
}
