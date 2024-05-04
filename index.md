---
layout: start
title: Start
permalink: /
sequence: 1

manufacturing: true
downloads:
  code: true
  schematic: true
  layout: true
  kicad: true
  gerber: true
  bom: true
  freecad: true
  case: true
features:
  - detail: Configure the 2 nodes with addresses <code>0xAA</code> and <code>0xBB</code> so that they can communicate with each other via LoRa
  - detail: Know when the current node does not have any GPS fix yet
  - detail: Display the current latitude-longitude
  - detail: Display the latitude-longitude with a relative time ago, which is the last GPS fix time
  - detail: Display the Haversine distance with the peer nodes
  - detail: Display the Haversine distance with a relative time ago when both nodes had a GPS fix
---
