---
layout: example
title: Serial print
description: Hello world with serial prints
references:
  - name: Arduino CLI
    url: https://arduino.github.io/arduino-cli/latest/
difficulty: easy
features:
  - print
  - serial

images:
  prototype: print-hello-prototype.jpg
  console: print-hello-console.jpg

steps:
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
---
