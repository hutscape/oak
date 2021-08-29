---
layout: example
title: GPS PA1010D with UART
description: Use GPS module PA1010D to display the raw NMEA sentences.
difficulty: easy
features:
  - GPS
  - PA1010D
  - UART
has_code: false

components:
  - name: PA1010D
    url: https://www.cdtop-tech.com/products/pa1010d
  - name: USB-UART CP2102 board
    url: https://s.click.aliexpress.com/e/_AdFtDI
  - name: Saleae Logic Analyser
    url: https://amzn.to/39SJ8px

video: 2WIaRukQKbk
images:
  prototype: gps-pa1010d-uart-prototype.jpg
  console: gps-pa1010d-uart-console.png
  schematic: gps-pa1010d-uart-schematic.png

steps:
  - step: Use GPS module PA1010D to view the raw NMEA sentences in the logic anayser.
    image: gps-pa1010d-uart-logic-analyzer.png

references:
  - name: CDTop PA1010D GNSS patch antenna module Datasheet V.03
    url: https://drive.google.com/file/d/1O-9RGAwgs2fgtnzJRBa9eB1fAqJt7n_k/view
  - name: Adafruit PA1010D breakout board module
    url: https://www.adafruit.com/product/4415

---
