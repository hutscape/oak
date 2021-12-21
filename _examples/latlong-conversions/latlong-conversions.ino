#define EARTH_RADIUS 6371.0

float lat1 = 1.42163183;
float long1 = 103.91052423;
float lat2 = 1.4172271;
float long2 = 103.91538793;

void setup() {
  SerialUSB.begin(9600);
  while (!SerialUSB) { }
  SerialUSB.println("Latitude, Longitude conversions...");

  SerialUSB.println("\nPunggol point lat-long:");
  convertLatLong(lat1, long1);

  SerialUSB.println("\nConey Island West point lat-long:");
  convertLatLong(lat2, long2);

  SerialUSB.println("\nHaversine Distance:");
  getHaversineDistance(lat1, long1, lat2, long2);
}

void loop() { }

// Convert a latitude and longitude
// from decimal degrees to DMS (degrees-minutes-seconds)
void convertLatLong(float lat, float lon) {
  SerialUSB.println("in Float: " + String(lat, 6) + ", " + String(lon, 6));

  SerialUSB.print("in DMS: ");
  // Convert latitude to DMS
  int latDegrees = (int)lat;
  float latMinutes = (lat - latDegrees) * 60.0;
  float latSeconds = (latMinutes - (int)latMinutes) * 60.0;
  SerialUSB.print(latDegrees);
  SerialUSB.print(" ");
  SerialUSB.print(latMinutes);
  SerialUSB.print("' ");
  SerialUSB.print(latSeconds);
  SerialUSB.print("\"");

  // Convert longitude to DMS
  int lonDegrees = (int)lon;
  float lonMinutes = (lon - lonDegrees) * 60.0;
  float lonSeconds = (lonMinutes - (int)lonMinutes) * 60.0;
  SerialUSB.print(",  ");
  SerialUSB.print(lonDegrees);
  SerialUSB.print(" ");
  SerialUSB.print(lonMinutes);
  SerialUSB.print("' ");
  SerialUSB.print(lonSeconds);
  SerialUSB.println("\"");
}

void getHaversineDistance(float lat1, float lon1, float lat2, float lon2) {
  float dLat = (lat2 - lat1) * DEG_TO_RAD;
  float dLon = (lon2 - lon1) * DEG_TO_RAD;
  float lat1Rad = lat1 * DEG_TO_RAD;
  float lat2Rad = lat2 * DEG_TO_RAD;

  float a = sin(dLat / 2) * sin(dLat / 2) +
    sin(dLon / 2) * sin(dLon / 2) * cos(lat1Rad) * cos(lat2Rad);
  float c = 2 * atan2(sqrt(a), sqrt(1 - a));
  float d = EARTH_RADIUS * c;

  SerialUSB.print(d);
  SerialUSB.println(" km");
}
