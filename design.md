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

# Power
power:
  tree: false
  components: false
  calculation: false
  source: <code>4200mAh</code> 18650 button-top battery
  battery_life: 14 hours
  charging_duration: 14 hours
  charging_instruction: Just plug in the USB cable to the Oak PCB that has the 18650 battery in the holder at the back. RED Charging LED will light up when charging. The battery will be fully charged when the RED Charging LED turns off.
---

<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Charging the battery</h2>
    <div class="content is-medium">
      <p>The multimeter with data logging feature was hooked up to the test points of <code>VBAT</code> and <code>GND</code>. It took about 11 hours to fully charge the battery with the on-board charging circuit.</p>
      <div class="container">
        <div class="columns is-multiline is-desktop">
          <div class="column is-half">
            <a href="{{site.url}}/images/design/charging-setup-1.jpg"><img src="{{site.url}}/images/design/charging-setup-1.jpg" alt="Charging Setup"></a>
          </div>
          <div class="column is-half">
            <a href="{{site.url}}/images/design/charging-setup-2.jpg"><img src="{{site.url}}/images/design/charging-setup-2.jpg" alt="Charging Setup"></a>
          </div>
        </div>
      </div>
      <a href="{{site.url}}/images/design/charging.png">
        <img src="{{site.url}}/images/design/charging.png" alt="Charging graph">
      </a>
    </div>
    <h2 class="title is-1">Measuring battery life</h2>
    <div class="content is-medium">
      <p>Two types of firmware was uploaded to measure the longest possible and shortest possible battery life:</p>
      <ol>
        <li>Longest possible: Blinky LED was 19 hours</li>
        <li>Shortest possible: Demo was 14 hours</li>
      </ol>
      <div class="container">
        <div class="columns is-multiline is-desktop">
          <div class="column is-half">
            <a href="{{site.url}}/images/design/discharging-setup-1.jpg"><img src="{{site.url}}/images/design/discharging-setup-1.jpg" alt="Charging Setup"></a>
          </div>
          <div class="column is-half">
            <a href="{{site.url}}/images/design/discharging-setup-2.jpg"><img src="{{site.url}}/images/design/discharging-setup-2.jpg" alt="Charging Setup"></a>
          </div>
        </div>
      </div>
      <a href="{{site.url}}/images/design/discharging.png">
        <img src="{{site.url}}/images/design/discharging.png" alt="Example of a discharging graph">
      </a>
    </div>
  </div>
</section>
