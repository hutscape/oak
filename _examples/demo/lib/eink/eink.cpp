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
void displayOnEink(String latlong, String timestamp, String haversine) {
  char convertLatlong[16] = "waiting for fix";  // Example "1.40N, 1.03E";
  latlong.toCharArray(convertLatlong, 16);

  char convertTimestamp[6] = "00:00";  // Example "02:16";
  timestamp.toCharArray(convertTimestamp, 6);

  char convertHaversine[10] = "searching";  // Example "0.3km";
  haversine.toCharArray(convertHaversine, 10);

  const char last_timestamp[] = "for peer";

  // Clear the E-Ink screen
  epd.ClearFrameMemory(0xFF);
  epd.DisplayFrame();
  epd.ClearFrameMemory(0xFF);
  epd.DisplayFrame();

  // Display current node's GPS and timestamp
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
  epd.Sleep();
}
