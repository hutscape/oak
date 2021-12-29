#define DEBUG
// Uncomment to enable verbose debug prints

#include <Adafruit_GPS.h>
#define GPSSerial Serial1
#define GPSECHO false
#define GPSRST 3
#define EARTH_RADIUS 6371.0  // km

// Float in decimal degrees
// E.g. "1.2228262778567307, 103.84607299131493" in decimal degrees is
// 1°13'22.2"N 103°50'45.9"E
// + is North and East, - is South and West
struct LatLong {
  float latitude;
  float longitude;
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
float getHaversineDistance(struct LatLong *, struct LatLong *);

// Convert LatLong to various formats
void convertLatLongForDisplay(struct LatLong *, String &);
void convertLatLongToString(struct LatLong *, String &);
void convertStringToLatLong(String, struct LatLong *);
float convertDMtoDecimalDegrees(float value);
