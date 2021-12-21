---
layout: example
title: Convert latitude-longitude format
description: Convert latitude-longitude coordinates from decimal degrees to DMS (degrees-minutes-seconds).
difficulty: easy
features:
  - haversine
  - gps
  - decimal
  - DMS
  - latitude
  - longitude
references:
  - name: https://www.latlong.net/lat-long-dms.html
    url: https://www.latlong.net/lat-long-dms.html
images:
  console: latlong-conversions-console.png
  prototype: hello-world-prototype.jpg
steps:
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
---

### Lat-Long formats

- Degrees-Minutes-Seconds (DMS): `1°24'58.6"N 103°54'54.6"E`
- Decimal-Minutes: `124.97666667, 10354.91`
- Decimal Degrees: `1.41627010, 103.91517884`
