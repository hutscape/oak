---
layout: default
title: Lessons learnt
permalink: /lessons
sequence: 9
lessons:
  - title: Lessons learnt
    subtitle: Good practices to continue for future projects
    list:
      - name: Add functional logical blocks in schematic to use similar circuits in future versions or other projects
      - name: Use stencil SMD soldering with SMD components as alternatives wherever possible
      - name: Use minimum number of through-hole components
      - name: Check Gerber file format with the PCB manufacturer before rendering them
      - name: Check `F.Paste` and `B.Paste` layers for SMD stencil pattern

  - title: V2.0
    subtitle: For next iteration
    list:
      - name: Use SMD components only on top layer for one-step manual SMD stencil soldering process
      - name: Place a writable area on the silkscreen to note down LoRa node address or other associated numbers
      - name: Add a PCB-edge through hole test point for <code>GND</code> so that it can be always left connected and accessed for both top and bottom layer probe testing
      - name: Use a smaller SSD1306 I2C OLED display instead of E-Ink

  - title: Board bring-up
    list:
      - name: Check with 2 PCBs to conclude whether it is a design issue or a soldering / manufacturing / assembly issue
      - name: Power it with USB only. Check `GND` and `VBUS` is `5V`. Check `GND` and `3.3V` is `3.3V`
      - name: Bridge the open solder jumper for `3.3V`
---
