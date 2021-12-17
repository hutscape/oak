---
layout: example
title: E-Ink rotated
description: Display lat-long and Haversine distance
references:
  - name: Arduino Waveshare E-paper 1in54 version 1
    url: https://github.com/waveshare/e-Paper/tree/master/Arduino/epd1in54
  - name: Arduino Waveshare E-paper 1in54 version 2
    url: https://github.com/waveshare/e-Paper/tree/master/Arduino/epd1in54_V2
dependancies:
  - name: waveshare
    url: https://github.com/waveshare/e-Paper
difficulty: medium
features:
  - e-ink
  - e-paper
  - waveshare
  - display
versions:
  - name: e-paper
    version: 1
prerequisites:
  - name: E-Ink hello world
    url: ./eink
images:
  prototype: eink-rotated-prototype.jpg
  console: eink-rotated-console.png
steps:
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
---

Display rotated information on the E-Ink as an example to display the various information such as latitude, longitude, Haversine distance and last timestamp.

This example uses Version 1 of WaveShare 1.54inch E-Ink module.
