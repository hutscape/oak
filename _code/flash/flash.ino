#include <FlashStorage.h>

FlashStorage(my_flash_store, int);

void setup() {
  SerialUSB.begin(9600);
  while (!SerialUSB) {}
  SerialUSB.println("Testing reading and writing into the flash...");

  int number;

  number = my_flash_store.read();
  SerialUSB.println("Read number: " + String(number));

  my_flash_store.write(number + 1);
  number = my_flash_store.read();
  SerialUSB.println("Read number after increment: " + String(number));
}

void loop() { }
