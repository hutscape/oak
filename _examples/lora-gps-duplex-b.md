---
layout: example
title: LoRa GPS duplex node B
description: Transmit and receive GPS lat-long from a peer LoRa node
references:
  - name: Arduino LoRa duplex example code
    url: https://github.com/sandeepmistry/arduino-LoRa/blob/master/examples/LoRaDuplex/LoRaDuplex.ino
dependancies:
  - name: Arduino LoRa
    url: https://github.com/sandeepmistry/arduino-LoRa
  - name: Adafruit GPS
    url: https://github.com/adafruit/Adafruit_GPS
prerequisites:
  - name: LoRa transmit
    url: ./lora-tx
  - name: LoRa receive
    url: ./lora-rx
  - name: LoRa Duplex B
    url: ./lora-duplex-b
difficulty: medium
features:
  - LoRa
  - duplex
  - p2p
  - GPS
  - latitude
  - longitude
images:
  prototype: lora-prototype.jpg
  console: lora-gps-duplex-console.png
steps:
  - step: Prepare <a href="./lora-gps-duplex-a">LoRa GPS duplex A</a> to send and receive GPS information
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
---

Run both nodes `AA` and `BB` at the same time to exchange their GPS location. They will not send any GPS data if the location remains the same.
