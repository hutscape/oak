#include "gps.h"

Adafruit_GPS GPS(&GPSSerial);
const uint8_t timezone = 8;  // GMT +8

void initGPS() {
  GPS.begin(9600);
  GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCGGA);
  GPS.sendCommand(PMTK_SET_NMEA_UPDATE_1HZ);
  GPS.sendCommand(PGCMD_ANTENNA);

  delay(1000);

  GPSSerial.println(PMTK_Q_RELEASE);
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
    latlong->latitude = GPS.latitude;
    latlong->longitude = GPS.longitude;
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

void formatLatLongForDisplay(struct LatLong *latlong, String &value) {
  if (GPS.fix) {
    String latitude = String(latlong->latitude, 0);
    String latitude_degrees =
        latitude.substring(0, latitude.length() - 2);
    String latitude_minutes =
        latitude.substring(latitude.length() - 2, latitude.length());

    String longitude = String(latlong->longitude, 0);
    String longitude_degrees =
        longitude.substring(0, longitude.length() - 2);
    String longitude_minutes =
        longitude.substring(longitude.length() - 2, longitude.length());

    value = latitude_degrees;
    value += " ";
    value += latitude_minutes;
    value += String(GPS.lat);
    value += ", ";
    value += longitude_degrees;
    value += " ";
    value += longitude_minutes;
    value += String(GPS.lon);
  }
}

void convertLatLongToString(struct LatLong *latlong, String &value) {
  if (GPS.fix) {
    String latitude = String(latlong->latitude, 8);
    String longitude = String(latlong->longitude, 8);

    value = latitude;
    value += String(GPS.lat);
    value += ",";
    value += longitude;
    value += String(GPS.lon);
  }
}
