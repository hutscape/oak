#define EARTH_RADIUS 6371.0  // km

float lat1 = 1.42163183;
float long1 = 103.91052423;
float lat2 = 1.4172271;
float long2 = 103.91538793;
float latDM = 124.97666667;
float longDM = 10354.91;

void setup() {
  SerialUSB.begin(9600);
  while (!SerialUSB) { }
  SerialUSB.println("Latitude, Longitude conversions...");

  SerialUSB.println("\nPunggol point lat-long:");
  convertDecToDMS(lat1, long1);

  SerialUSB.println("\nConey Island West point lat-long:");
  convertDecToDMS(lat2, long2);

  SerialUSB.println("\nHaversine Distance:");
  getHaversineDistance(lat1, long1, lat2, long2);

  SerialUSB.println("\nConey Island West Entrance:");
  convertDMtoDMStoDec(latDM, longDM);
}

void loop() { }

// Convert a latitude and longitude
// from decimal degrees to DMS (degrees-minutes-seconds)
void convertDecToDMS(float lat, float lon) {
  SerialUSB.println("in Decimals: " + String(lat, 6) + ", " + String(lon, 6));

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

void convertDMtoDMStoDec(float lat, float lon) {
  SerialUSB.println(
    "in DM: "
    + String(lat, 6)
    + ", "
    + String(lon, 6));

  // Convert DM to DMS
  int latDM = (int)lat;
  String latDMString = String(latDM);
  String latD = latDMString.substring(0, latDMString.length() - 2);
  String latM = latDMString.substring(latDMString.length() - 2, latDMString.length());
  float latS = (lat - (int)lat) * 60.0;
  SerialUSB.print("in DMS: ");
  SerialUSB.print(latD + " ");
  SerialUSB.print(latM + "' ");
  SerialUSB.print(String(latS) + "\",  ");

  int lonDM = (int)lon;
  String lonDMString = String(lonDM);
  String lonD = lonDMString.substring(0, lonDMString.length() - 2);
  String lonM = lonDMString.substring(
    lonDMString.length() - 2, lonDMString.length());
  float lonS = (lon - (int)lon) * 60.0;
  SerialUSB.print(lonD + " ");
  SerialUSB.print(lonM + "' ");
  SerialUSB.println(String(lonS) + "\"");

  // Convert DMS to Dec
  float latDec = (latD.toFloat()
    + (latM.toFloat() / 60.0)
    + (latS / 3600.0));
  float lonDec = (lonD.toFloat()
    + (lonM.toFloat() / 60.0)
    + (lonS / 3600.0));
  SerialUSB.println("in Decimals: "
    + String(latDec, 6)
    + ", "
    + String(lonDec, 6));
}
