---
layout: csq
title: CSQ
permalink: /csq
sequence: 7

# Lessons
lessons:
  - name: (Schematci) Add functional logical blocks in schematic to use similar circuits in future versions or other projects
  - name: (Manufacturing) Use stencil SMD soldering with SMD components only if it is necessary. Else, use a PCB assembly service.
  - name: (Manufacturin) Use minimum number of through-hole components
  - name: (Manufacturing) Check Gerber file format with the PCB manufacturer before rendering them
  - name: (Manufacturing) Check <code>F.Paste</code> and <code>B.Paste</code> layers for SMD stencil pattern
  - name: (Testing) Pull out every single MCU pin as a test point for the first version of the project.
  - name: (BOM) Always buy buffer number of components. Image is from the book Designing Electronics That Work by Hunter Scott.
    image: buffer-components.png
  - name: (Layout) Make the PCB routing symmetrical for LED positions and connector slots
  - name: (Case) Ensure the length is not too long to prevent bending of the material
  - name: (Case) Use wider ventilation holes with wider spacing between each of them
  - name: (Case) Use less clearance for connector slots. Take note of finger access
  - name: (Case) Use other shapes for connector slots E.g. rounded corner or trapezoid
  - name: (Case) Use shape binder for seperation plane bends
  - name: (Case) Use a counter sunk screw head
  - name: (Case) Make the screw lug's initial length be wider to contain the screw head so that it can sink into the surface
  - name: (Case) Try a snap-fit enclosure
  - name: (Manufacturing) Use SMD components only on top layer for one-step manual SMD stencil soldering process
  - name: (Layout) Place a writable area on the silkscreen to note down LoRa node address, PCB number, frequency or other info
  - name: (Layout) Add a <a href="https://sg.element14.com/c/test-measurement/test-connectors-ic-clips/pcb-test-points?connector-mounting=surface-mount">surface mount PCB test point</a> for <code>VBAT</code>, <code>VBUS</code>, <code>3.3V</code>, <code>5V</code>, <code>GND</code> and SPI points.
  - name: (BOM) Use a smaller <code>SSD1306</code> I2C OLED display instead of E-Ink. It's cheaper and easier to source and buy.
  - name: (Testing) Check with 3 PCBs to conclude whether it is a design issue or a soldering / manufacturing / assembly issue
  - name: (Testing) Power it with current limiting power supply unit only. Check all the power test points such as <code>VBAT</code>, <code>VBUS</code>, <code>3.3V</code>, <code>5V</code>, <code>GND</code>.

# Schedule
design_start: '2019-11-05'
design_end: '2021-05-20'
manufacturing_start: '2021-05-24'
manufacturing_end: '2021-06-10'
integration_start: '2021-06-21'
integration_end: '2021-12-31'
deployment_start: '2022-01-01'
deployment_end: '2022-02-15'
---
