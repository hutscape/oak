---
layout: example
title: Upload Arduino Zero bootloader
description: Upload bootloader Arduino Zero with J-Link Edu Mini
references:
  - name: Arduino Core for SAMD21G to make the bootloader file
    url: https://github.com/arduino/ArduinoCore-samd
  - name: Download SEGGER J-Flash lite software
    url: https://www.segger.com/downloads/jlink/#J-LinkSoftwareAndDocumentationPack
difficulty: difficult
features:
  - bootloader
  - j-link edu mini
has_code: false
images:
  prototype: bootloader-prototype.jpg
  schematic: bootloader-schematic.png
---

## Pin connections

| SWD Connector pin | SWD Pin name |  SAMD21G |
| ------ | ------ | ------ |
| 1 | Vtref | not connected |
| 2 | SWDIO | PA31
| 3 | GND | GND
| 4 | SWDCLK |PA30
| 9 | GND | GND
| 10 | RESET | RESET

<img src="{{ site.url }}/images/examples/bootloader-pins.png" alt="SWD Pin connections on the PCB">

## Create the bootloader file

1. Clone [ArduinoCore-samd](https://github.com/arduino/ArduinoCore-samd)
1. Go to folder `/bootloaders/zero`
1. (Optional) Append `Makefile` line `66` for **crystalless** board with `-DCRYSTALLESS`
    ```c
    CFLAGS_EXTRA=-D__SAMD21G18A__ -DBOARD_ID_$(BOARD_ID) -D$(SAM_BA_INTERFACES) -DCRYSTALLESS
    ```
1. (Optional) Edit `board_definitions_arduino_zero.h` line `26` to change product name
    ```c
    #define STRING_PRODUCT "Oak"
    ```
1. (Optional) Edit `sam_ba_usb.c` line `156` to change manufacturer name
    ```c
    #define STRING_MANUFACTURER "Hutscape"
    ```
1. Run `make`
1. Ensure files `bootloaders/zero/samd21_sam_ba.bin` and `bootloaders/zero/samd21_sam_ba.hex` are created

## Burn the bootloader

1. Download and open [SEGGER J-Flash Lite](https://www.segger.com/downloads/jlink/#J-LinkSoftwareAndDocumentationPack)
1. Connect the J-Link Edu Mini with SWD pins to the PCB
1. Choose the created bootloader data file `samd21_sam_ba.bin`
1. Click `Program Device`
    <img src="{{ site.url }}/images/examples/bootloader-jflash.png" alt="">
1. Disconnect J-Link Edu Mini and connect the PCB to the laptop
1. Double press the reset button to bring it into the bootloader mode
1. Query `ls -al /dev/cu.usbmodem*` to ensure the port is detected
1. Query `arduino-cli board list | grep arduino` to ensure the board is detected
  ```
  /dev/cu.usbmodem14101           Serial Port (USB) Arduino Zero (Native USB Port) arduino:samd:arduino_zero_native arduino:samd
  ```
1. Flash the [blinky LED program](./hello-world) with **crystalless** option
