---
layout: power
title: Power
permalink: /power
sequence: 6

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

## Charging the battery

The multimeter with data logging feature was hooked up to the test points of `VBAT` and `GND`. It took about 11 hours to fully charge the battery with the on-board charging circuit.

[![Charging Setup]({{site.url}}/images/design/charging-setup-1.jpg)]({{site.url}}/images/design/charging-setup-1.jpg)

[![Charging Setup]({{site.url}}/images/design/charging-setup-2.jpg)]({{site.url}}/images/design/charging-setup-2.jpg)

[![Charging graph]({{site.url}}/images/design/charging.png)]({{site.url}}/images/design/charging.png)

## Measuring battery life

Two types of firmware was uploaded to measure the longest possible and shortest possible battery life:

1. Longest possible: Blinky LED was `19 hours`
1. Shortest possible: Demo was `14 hours`

[![Charging Setup]({{site.url}}/images/design/discharging-setup-1.jpg)]({{site.url}}/images/design/discharging-setup-1.jpg)

[![Charging Setup]({{site.url}}/images/design/discharging-setup-2.jpg)]({{site.url}}/images/design/discharging-setup-2.jpg)

[![Example of a discharging graph]({{site.url}}/images/design/discharging.png)]({{site.url}}/images/design/discharging.png)
