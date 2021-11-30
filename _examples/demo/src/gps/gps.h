#include <Adafruit_GPS.h>
#define GPSSerial Serial1
#define GPSECHO false

void initGPS();
bool receivedGPSfix();
void getGPStime(String &);
void getGPSdate(String &);
void getLatLong(String &);
void getOtherGPSinfo();
