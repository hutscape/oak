---
layout: example
title: Reading and writing a struct to the flash
description: Reading and writing a struct to the non-volatile flash memory.
dependancies:
  - name: FlashStorage
    url: https://github.com/cmaglie/FlashStorage
references:
  - name: Flash store name and surname
    url: https://github.com/cmaglie/FlashStorage/blob/master/examples/StoreNameAndSurname/StoreNameAndSurname.ino
difficulty: easy
features:
  - flash
  - storage
  - read
  - write
  - struct
images:
  prototype: hello-world-prototype.jpg
  console: flash-console.png

steps:
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
  - step: Watch the Blinky LED the board is battery-powered or USB-powered.
---

Write a set of config to the flash storage and read it back.

```c
struct Config {
  byte localAddress;
  byte destinationAddress;
  char eink_version[4];
  char hardware_model[2];
};
```
