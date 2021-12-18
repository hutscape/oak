#include <FlashStorage.h>

struct Config {
  byte localAddress;
  byte destinationAddress;
  char eink_version[4];
  char hardware_model[2];
};

FlashStorage(oak_flash_store, Config);

void setup() {
  SerialUSB.begin(9600);
  while (!SerialUSB) {}
  SerialUSB.println("Reading and writing a struct into the flash...");

  Config oak_config = {0xBB, 0xAA, "1.0", "B"};
  Config oak_config_read;

  oak_flash_store.write(oak_config);
  oak_config_read = oak_flash_store.read();
  SerialUSB.println("\nWrite Oak config");

  SerialUSB.println("\nRead Oak config: ");
  SerialUSB.println(" localAddress: "
    + String(oak_config_read.localAddress, HEX));
  SerialUSB.println(" destinationAddress: "
    + String(oak_config_read.destinationAddress, HEX));
  SerialUSB.println(" eink_version: "
    + String(oak_config_read.eink_version));
  SerialUSB.println(" hardware_model: "
    + String(oak_config_read.hardware_model));
}

void loop() { }
