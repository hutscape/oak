#include "gps.h"

Adafruit_GPS GPS(&GPSSerial);

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
    return false;
  }

  return true;
}

void getGPStime(String &value) {
  if (GPS.hour < 10) {
    value = '0';
  }
  value += String(GPS.hour, DEC);
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

void getLatLong(String &value) {
  if (GPS.fix) {
    String latitude = String(GPS.latitude, 0);
    String latitude_degrees =
        latitude.substring(0, latitude.length() - 2);
    String latitude_minutes =
        latitude.substring(latitude.length() - 2, latitude.length());

    String longitude = String(GPS.longitude, 0);
    String longitude_degrees =
        longitude.substring(0, longitude.length() - 2);
    String longitude_minutes =
        longitude.substring(longitude.length() - 2, longitude.length());

    value = latitude_degrees;
    value += " ";
    value += latitude_minutes;
    value += String(GPS.lat);
    value += ",  ";
    value += longitude_degrees;
    value += " ";
    value += longitude_minutes;
    value += String(GPS.lon);
  }
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
