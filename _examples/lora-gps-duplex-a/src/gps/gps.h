#define DEBUG  // Uncomment to enable verbose debug prints

#include <Adafruit_GPS.h>
#define GPSSerial Serial1
#define GPSECHO false

struct LatLong {
  float latitude;
  float longitude;
};

void initGPS();
bool receivedGPSfix();

void getGPStime(String &);
void getGPSdate(String &);
void getLatLong(struct LatLong *);
bool hasNewGPSFix(struct LatLong *, struct LatLong *);
bool getGPSfix();
uint8_t getGPSfixquality();
float getGPSspeed();
float getGPSangle();
float getGPSaltitude();
uint8_t getGPSsatellites();
float getGPStimeSinceLastFix();
float getGPSlastTime();
float getGPSlastDate();

void formatLatLongForDisplay(struct LatLong *, String &);
void convertLatLongToString(struct LatLong *, String &);
