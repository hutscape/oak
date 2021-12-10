---
layout: example
title: Oak Demo
description: Send GPS information to the peer LoRa node and display it on the E-Ink screen
references:
  - name: Arduino LoRa duplex example code
    url: https://github.com/sandeepmistry/arduino-LoRa/blob/master/examples/LoRaDuplex/LoRaDuplex.ino
prerequisites:
  - name: LoRa Duplex A
    url: ./lora-duplex-a
  - name: LoRa Duplex B
    url: ./lora-duplex-b
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
  - step: Prepare 2 nodes flash with the same sketch but with different local and destination addresses
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
---
