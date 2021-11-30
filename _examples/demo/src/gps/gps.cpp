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
    return true;  // TEMP
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
    value = String(GPS.latitude, 0);
    value += String(GPS.lat);
    value += ',';
    value += String(GPS.longitude, 0);
    value += String(GPS.lon);

    // TODO: Add a dot to the 2nd past position
    // of the lat and long string to indicate degress.minutes
  }
}

void getOtherGPSinfo() {
  SerialUSB.print("Fix: ");
  SerialUSB.print((int)GPS.fix);
  SerialUSB.print(" quality: ");
  SerialUSB.println((int)GPS.fixquality);
  SerialUSB.print("Time [s] since last fix: ");
  SerialUSB.println(GPS.secondsSinceFix(), 3);
  SerialUSB.print("    since last GPS time: ");
  SerialUSB.println(GPS.secondsSinceTime(), 3);
  SerialUSB.print("    since last GPS date: ");
  SerialUSB.println(GPS.secondsSinceDate(), 3);
  if (GPS.fix) {
    SerialUSB.print("Location: ");
    SerialUSB.print(GPS.latitude, 4);
    SerialUSB.print(GPS.lat);
    SerialUSB.print(", ");
    SerialUSB.print(GPS.longitude, 4);
    SerialUSB.println(GPS.lon);
    SerialUSB.print("Speed (knots): ");
    SerialUSB.println(GPS.speed);
    SerialUSB.print("Angle: ");
    SerialUSB.println(GPS.angle);
    SerialUSB.print("Altitude: ");
    SerialUSB.println(GPS.altitude);
    SerialUSB.print("Satellites: ");
    SerialUSB.println((int)GPS.satellites);
  }
}
