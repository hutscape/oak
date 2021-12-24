#define DEBUG
// Uncomment to enable verbose debug prints

#include <Adafruit_GPS.h>
#define GPSSerial Serial1
#define GPSECHO false
#define GPSRST 3

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

// Convert LatLong to various formats
void convertLatLongForDisplay(struct LatLong *, String &);
void convertLatLongToString(struct LatLong *, String &);
