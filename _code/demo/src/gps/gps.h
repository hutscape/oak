#define DEBUG
// Uncomment to enable verbose debug prints

#include <Adafruit_GPS.h>
#define GPSSerial Serial1
#define GPSECHO false
#define GPSRST 3
#define EARTH_RADIUS 6371.0  // km

// Float latitude and longitude in decimal degrees
// E.g. "1.2228262778567307, 103.84607299131493" in decimal degrees is
// 1°13'22.2"N 103°50'45.9"E in degrees, minutes, seconds
// + is North and East, - is South and West
struct LatLong {
  float latitude;  // latitude in decimal degrees
  float longitude;  // longitude in decimal degrees
  bool hasValidFix;  // true if GPS has a valid fix
  uint32_t timestamp;  // milliseconds
};

// float distance is Haversine distance in km
// int timeDiff is time difference in seconds
// when the 2 nodes received their GPS fixes
struct Haversine {
  float distance;
  int timeDiff;
};

// GPS initialisation and GPS fix related functions
void initGPS();
bool receivedGPSfix();
bool hasNewGPSFix(struct LatLong *, struct LatLong *);
bool getGPSfix();
uint8_t getGPSfixquality();

// Get various types of GPS information
void getGPStime(String &);
void getGPSdate(String &);
void getLatLong(struct LatLong *);
float getGPSspeed();
float getGPSangle();
float getGPSaltitude();
uint8_t getGPSsatellites();
float getGPStimeSinceLastFix();
float getGPSlastTime();
float getGPSlastDate();
void getHaversineDistance(
  struct LatLong *,
  struct LatLong *,
  struct Haversine *);

// Convert LatLong to various formats
void convertLatLongForDisplay(struct LatLong *, String &);
void convertLatLongToString(struct LatLong *, String &);
void convertStringToLatLong(String, struct LatLong *);
float convertDMtoDecimalDegrees(float value);
bool isOKtoCalculateHaversine(struct LatLong *, struct LatLong *);
int calculateTimeDiff(uint32_t);
