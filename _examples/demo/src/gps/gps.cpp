#include "gps.h"
#include "Arduino.h"

Adafruit_GPS GPS(&GPSSerial);
const uint8_t timezone = 8;  // GMT +8

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

void getLatLong(struct LatLong *latlong) {
  if (GPS.fix) {
    latlong->latitude = convertDMtoDecimalDegrees(GPS.latitude);
    latlong->longitude = convertDMtoDecimalDegrees(GPS.longitude);
  }

  if (String(GPS.lat) == "N") {
    latlong->latitude *= 1;
  } else {
    latlong->latitude *= -1;
  }

  if (String(GPS.lon) == "E") {
    latlong->longitude *= 1;
  } else {
    latlong->longitude *= -1;
  }
}

bool hasNewGPSFix(struct LatLong *prevLatlong, struct LatLong *currLatLong) {
  if (currLatLong->latitude == 0.00 && currLatLong->longitude == 0.00) {
    return false;
  }

  if (prevLatlong->latitude == currLatLong->latitude
    && prevLatlong->longitude == currLatLong->longitude) {
    return false;
  }

  return true;
}

void getGPStime(String &value) {
  uint8_t hourInTimezone = (GPS.hour + timezone) % 24;

  if (hourInTimezone < 10) {
    value = '0' + String(hourInTimezone, DEC);
  }

  value = String(hourInTimezone, DEC);
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
void convertLatLongForDisplay(struct LatLong *latlong, String &value) {
  String latitude = String(latlong->latitude, 2);
  String latitude_direction = latlong->latitude < 0 ? "S" : "N";

  String longitude = String(latlong->longitude, 2);
  String longitude_direction = latlong->longitude < 0 ? "W" : "E";

  value = latitude
    + latitude_direction
    + ", "
    + longitude
    + longitude_direction;
}

// Output example: "1234.12345678N, 12345.12345678E"
// Format in Degree-Minutes in 8 decimal place accruacy
void convertLatLongToString(struct LatLong *latlong, String &value) {
  String latitude = String(latlong->latitude, 8);
  String longitude = String(latlong->longitude, 8);

  value = latitude + "," + longitude;
}

float getHaversineDistance(struct LatLong *latlong1, struct LatLong *latlong2) {
  float lat1 = latlong1->latitude;
  float lon1 = latlong1->longitude;
  float lat2 = latlong2->latitude;
  float lon2 = latlong2->longitude;

  float dLat = (lat2 - lat1) * DEG_TO_RAD;
  float dLon = (lon2 - lon1) * DEG_TO_RAD;
  float lat1Rad = lat1 * DEG_TO_RAD;
  float lat2Rad = lat2 * DEG_TO_RAD;

  float a = sin(dLat / 2) * sin(dLat / 2) +
            sin(dLon / 2) * sin(dLon / 2) * cos(lat1Rad) * cos(lat2Rad);
  float c = 2 * atan2(sqrt(a), sqrt(1 - a));
  float d = EARTH_RADIUS * c;

  return d;  // in km
}

// Convert from Decimal degrees "1234.12345678,12345.12345678" to LatLong
void convertStringToLatLong(String data, struct LatLong *latlong) {
  int commaIndex = data.indexOf(",");
  int dataLength = data.length();

  String latitude = data.substring(0, commaIndex);
  String longitude = data.substring(commaIndex + 1, dataLength);

  latlong->latitude = latitude.toFloat();
  latlong->longitude = longitude.toFloat();
}
// Convert Degree-Minutes 125.28 (1° 25.28') to Decimal Degrees 1.421343
float convertDMtoDecimalDegrees(float value) {
  int size = String(value, 8).length();

  String minutes = String(value, 8).substring(size - 8 - 3, size);
  String degrees = String(value, 8).substring(0, size - 8 - 3);

  float decimalDegrees = degrees.toFloat() + minutes.toFloat() / 60;

  return decimalDegrees;
}
