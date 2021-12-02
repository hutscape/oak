#include <Adafruit_GPS.h>
#define GPSSerial Serial1
#define GPSECHO false

void initGPS();
bool receivedGPSfix();
void getGPStime(String &);
void getGPSdate(String &);
void getLatLong(String &);
bool getGPSfix();
uint8_t getGPSfixquality();
float getGPSspeed();
float getGPSangle();
float getGPSaltitude();
uint8_t getGPSsatellites();

void getOtherGPSinfo();
