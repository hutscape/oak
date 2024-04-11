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
