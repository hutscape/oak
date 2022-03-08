---
layout: example
title: Oak Demo
description: Send GPS information to the peer LoRa node and display it on the E-Ink screen
references:
  - name: Arduino LoRa duplex example code
    url: https://github.com/sandeepmistry/arduino-LoRa/blob/master/examples/LoRaDuplex/LoRaDuplex.ino
  - name: Adafruit GPS Hardware serial parsing
    url: https://github.com/adafruit/Adafruit_GPS/blob/master/examples/GPS_HardwareSerial_Parsing/GPS_HardwareSerial_Parsing.ino
  - name: Arduino Waveshare E-paper 1in54 version 1
    url: https://github.com/waveshare/e-Paper/tree/master/Arduino/epd1in54
  - name: Arduino Waveshare E-paper 1in54 version 2
    url: https://github.com/waveshare/e-Paper/tree/master/Arduino/epd1in54_V2
prerequisites:
  - name: LoRa Duplex A
    url: ./lora-duplex-a
  - name: LoRa Duplex B
    url: ./lora-duplex-b
  - name: GPS Fix
    url: ./gps-fix-parsed
  - name: E-Ink rotated
    url: ./eink-rotated
difficulty: medium
features:
  - LoRa
  - duplex
  - p2p
  - GPS
  - E-Ink
images:
  prototype: demo-prototype.jpg
  console: demo-console.png
steps:
  - step: Prepare 2 devices uploaded with the same sketch
  - step: Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>.
    image: print-hello-check.png
  - step: Run <code>make a</code> to upload the code to the PCB A with local address <code>0xAA</code>, destination address<code>0xBB</code>, E-Ink version <code>2</code>
  - step: Run <code>make b</code> to upload the code to the PCB B with local address <code>0xBB</code>, destination address<code>0xAA</code>, E-Ink version <code>1</code>
photos:
  - filename: demo-waiting.jpg
  - filename: demo-fix.jpg
---

This example shows how 2 devices are exchanging GPS latitude-longitude information with each other via LoRa communication.

The serial output below shows after resetting the device, it initialises the LoRa and E-Ink, waits for a while, and then finally gets a GPS fix and starts to send that information via LoRa.

<img src="{{ site.url }}/images/examples/demo-reset-console.png" alt="Serial output after reset">
