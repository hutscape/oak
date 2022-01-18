#include "gps.h"
#include "Arduino.h"
#include "Math.h"

Adafruit_GPS GPS(&GPSSerial);
const uint8_t timezone = 8;  // GMT +8

#define TEN_SECONDS 10000

void initGPS() {
  GPS.begin(9600);
  GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCGGA);
  GPS.sendCommand(PMTK_SET_NMEA_UPDATE_1HZ);
  GPS.sendCommand(PGCMD_ANTENNA);

  delay(1000);

  pinMode(GPSRST, OUTPUT);
  digitalWrite(GPSRST, HIGH);
}

bool receivedGPSfix() {
  char c = GPS.read();

  if (GPS.newNMEAreceived()) {
    if (!GPS.parse(GPS.lastNMEA())) {
      return false;
    }
  }

  if (!GPS.fix) {
    #ifdef DEBUG
      // print intermediate GPS info before fix
      return true;
    #else
      // don't print intermediate GPS info until there is a fix
      return false;
    #endif
  }

  return true;
}

void getLatLong(struct LatLong *latLong) {
  if (GPS.fix) {
    latLong->latitude = convertDMtoDecimalDegrees(GPS.latitude);
    latLong->longitude = convertDMtoDecimalDegrees(GPS.longitude);
    latLong->hasValidFix = true;
    latLong->timestamp = millis();
  }

  if (String(GPS.lat) == "N") {
    latLong->latitude *= 1;
  } else {
    latLong->latitude *= -1;
  }

  if (String(GPS.lon) == "E") {
    latLong->longitude *= 1;
  } else {
    latLong->longitude *= -1;
  }
}

bool hasNewGPSFix(struct LatLong *prevLatLong, struct LatLong *currLatLong) {
  if (!currLatLong->hasValidFix) {
    return false;
  }

  if (prevLatLong->latitude == currLatLong->latitude
    && prevLatLong->longitude == currLatLong->longitude) {
    return false;
  }

  return true;
}

void getGPStime(String &value) {
  uint8_t hourInTimezone = (GPS.hour + timezone) % 24;

  if (hourInTimezone < 10) {
    value = '0' + String(hourInTimezone, DEC);
  } else {
    value = String(hourInTimezone, DEC);
  }

  value += ':';

  if (GPS.minute < 10) {
    value += '0';
  }
  value += String(GPS.minute, DEC);
  value += ':';

  if (GPS.seconds < 10) {
    value += '0';
  }
  value += String(GPS.seconds, DEC);
  value += '.';

  if (GPS.milliseconds < 10) {
    value += '00';
  } else if (GPS.milliseconds > 9 && GPS.milliseconds < 100) {
    value += '0';
  } else {
    value += String(GPS.milliseconds, DEC);
  }
}

void getGPSdate(String &value) {
  value = "20";
  value += String(GPS.year, DEC);
  value += '-';
  value += String(GPS.month, DEC);
  value += '-';
  value += String(GPS.day, DEC);
}

bool getGPSfix() {
  return GPS.fix;
}

uint8_t getGPSfixquality() {
  return GPS.fixquality;
}

float getGPSspeed() {
  return GPS.speed;
}

float getGPSangle() {
  return GPS.angle;
}

float getGPSaltitude() {
  return GPS.altitude;
}

uint8_t getGPSsatellites() {
  return GPS.satellites;
}

float getGPStimeSinceLastFix() {
  return GPS.secondsSinceFix();
}

float getGPSlastTime() {
  return GPS.secondsSinceTime();
}

float getGPSlastDate() {
  return GPS.secondsSinceDate();
}

// Output example
// String value = "12.34N, 12.34E" in decimal degrees to 2 decimal places
void convertLatLongForDisplay(struct LatLong *latLong, String &value) {
  String latitude = String(latLong->latitude, 2);
  String latitude_direction = latLong->latitude < 0 ? "S" : "N";

  String longitude = String(latLong->longitude, 2);
  String longitude_direction = latLong->longitude < 0 ? "W" : "E";

  value = latitude
    + latitude_direction
    + ", "
    + longitude
    + longitude_direction;
}

// Output example: "1234.12345678N, 12345.12345678E"
// Format in Degree-Minutes in 8 decimal place accruacy
void convertLatLongToString(struct LatLong *latLong, String &value) {
  String latitude = String(latLong->latitude, 8);
  String longitude = String(latLong->longitude, 8);

  value = latitude + "," + longitude;
}

void getHaversineDistance(
  struct LatLong *latLong1,
  struct LatLong *latLong2,
  struct Haversine *haversine) {
  // Calculate Haversine distance between two latitude-longitude points
  float lat1 = latLong1->latitude;
  float lon1 = latLong1->longitude;
  float lat2 = latLong2->latitude;
  float lon2 = latLong2->longitude;

  float dLat = (lat2 - lat1) * DEG_TO_RAD;
  float dLon = (lon2 - lon1) * DEG_TO_RAD;
  float lat1Rad = lat1 * DEG_TO_RAD;
  float lat2Rad = lat2 * DEG_TO_RAD;

  float a = sin(dLat / 2) * sin(dLat / 2) +
            sin(dLon / 2) * sin(dLon / 2) * cos(lat1Rad) * cos(lat2Rad);
  float c = 2 * atan2(sqrt(a), sqrt(1 - a));
  float d = EARTH_RADIUS * c;

  haversine->distance = d;  // in km

  // Calculate time difference between 2 GPS fixes
  int localTimeDifference = abs(millis() - latLong1->timestamp);
  int peerTimeDifference = abs(millis() - latLong2->timestamp);
  int timeDifference = min(peerTimeDifference, localTimeDifference) / 1000;

  haversine->timeDiff = timeDifference;  // in seconds
}

// Convert from Decimal degrees "1234.12345678,12345.12345678" to LatLong
void convertStringToLatLong(String data, struct LatLong *latLong) {
  int commaIndex = data.indexOf(",");
  int dataLength = data.length();

  String latitude = data.substring(0, commaIndex);
  String longitude = data.substring(commaIndex + 1, dataLength);

  latLong->latitude = latitude.toFloat();
  latLong->longitude = longitude.toFloat();
  latLong->hasValidFix = true;
  latLong->timestamp = millis();
}

// Convert Degree-Minutes 125.28 (1° 25.28') to Decimal Degrees 1.421343
float convertDMtoDecimalDegrees(float value) {
  int size = String(value, 8).length();

  String minutes = String(value, 8).substring(size - 8 - 3, size);
  String degrees = String(value, 8).substring(0, size - 8 - 3);

  float decimalDegrees = degrees.toFloat() + minutes.toFloat() / 60;

  return decimalDegrees;
}

// Get absolutel time difference in seconds
// between the 2 nodes receiving their GPS fixes
int getTimeDiff(uint32_t peerTimestamp, uint32_t localTimestamp) {
  int peerTimeDifference = abs(millis() - peerTimestamp);
  int localTimeDifference = abs(millis() - localTimestamp);
  int timeDifference = min(peerTimeDifference, localTimeDifference) / 1000;

  return timeDifference;
}

// Display peer node information on the E-Ink display
// if peer node has a valid GPS Fix
// and if the time difference between the 2 nodes is less than 10 seconds
bool isOKtoCalculateHaversine(struct LatLong *peerLL, struct LatLong *localLL) {
  if (peerLL->hasValidFix) {
    if (abs(peerLL->timestamp - localLL->timestamp) < TEN_SECONDS) {
      return true;
    }
  }

  return false;
}

int calculateTimeDiff(uint32_t timestamp) {
  return (millis() - timestamp) / 1000;  // in seconds
}
