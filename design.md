---
layout: design
title: Design
permalink: /design
sequence: 6

# Mechanical
items:
  - name: Waveshare 1.54inch E-Ink display module
    url: https://www.waveshare.com/1.54inch-e-Paper-Module.htm
    height: 48.0
    width: 33.0
    depth:
    dimension_unit: mm
    weight: 24
    weight_unit: g
    comment: display
  - name: HopeRF RFM95 LoRa module
    url: https://www.seeedstudio.com/RFM95-Ultra-long-Range-Transceiver-Module-LoRa-Module-support-868M-frequency-p-2807.html
    height: 16
    width: 16
    depth:  1.8
    dimension_unit: mm
    weight: 2
    weight_unit: g
    comment: LoRa
  - name: CDTop PA1010D GPS module
    url: https://www.cdtop-tech.com/products/pa1010d
    height: 10
    width: 10
    depth:  6.8
    dimension_unit: mm
    weight: 2.75
    weight_unit: g
    comment: LoRa

# Design
sub_system: true
state_machine: false
terminologies:
  - term: Device
    definition: Oak, the entire electronics with embedded firmware and associated software
  - term: Local node
    definition: Current node that the user is holding, which is setup as a current node for LoRa peer-to-peer communication
  - term: Peer node
    definition: Peer node, another node that the device is setup as a destination for LoRa peer-to-peer communication
  - term: Haversine distance
    definition: Distance between the 2 nodes that has a GPS fix within 5 seconds of each other

user_stories:
  - user: first-time user
    actions:
      - goal: configure the 2 nodes with addresses <code>0xAA</code> and <code>0xBB</code>
        reason: they can communicate with each other via LoRa
  - user: user
    actions:
      - goal: know my current node does not have any GPS fix yet
        reason: I know I need to wait for a possible GPS fix
      - goal: see the current latitude-longitude
        reason: I know my current location
      - goal: see my latitude-longitude with a relative time ago
        reason: I know my last GPS fix time
      - goal: see the Haversine distance with the peer node
        reason: I know how far away is the peer node
      - goal: see the Haversine distance with a relative time ago
        reason: I know how far away was the peer node when both nodes had a GPS fix

---
