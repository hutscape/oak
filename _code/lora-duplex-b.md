---
layout: code
title: LoRa duplex node B
description: LoRa transmit and receive from destination address approximately at the same time
references:
  - name: Arduino LoRa duplex example code
    url: https://github.com/sandeepmistry/arduino-LoRa/blob/master/code/LoRaDuplex/LoRaDuplex.ino
dependancies:
  - name: Arduino LoRa
    url: https://github.com/sandeepmistry/arduino-LoRa
prerequisites:
  - name: LoRa transmit
    url: ./lora-tx
  - name: LoRa receive
    url: ./lora-rx
  - name: LoRa Duplex A
    url: ./lora-duplex-a
difficulty: medium
features:
  - LoRa
  - duplex
  - p2p
images:
  prototype: lora-prototype.jpg
  console: lora-duplex-console.png
steps:
  - step: Prepare <a href="./lora-duplex-a">LoRa duplex A</a> to send and receive at the same time
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
---

Run both nodes `AA` and `BB` at the same time to exchange an integer.

This example can be run battery-powered. The LED will blink when the node sends out a packet.
