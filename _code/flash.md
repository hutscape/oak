---
layout: code
title: Reading and writing to the flash
description: Reading and writing a simple integer to the non-volatile flash memory.
dependancies:
  - name: FlashStorage
    url: https://github.com/cmaglie/FlashStorage
references:
  - name: Flash store and retrieve
    url: https://github.com/cmaglie/FlashStorage/blob/master/code/FlashStoreAndRetrieve/FlashStoreAndRetrieve.ino
difficulty: easy
features:
  - flash
  - storage
  - read
  - write
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

Write an integer to the flash. And then increment and store it again. In the process, this example will read and write to the flash storage.
