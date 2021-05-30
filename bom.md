---
layout: default
title: Bill of Materials
permalink: /bom
sequence: 4
ibom: true
---

<!--

======= How to generate BOM ======

    1. Generate a new Netlist
    2. Generate a new *.xml file
        Remove all BOM plugins -> Add BOM plugin "bom_csv_grouped_by_value" -> Click Generate
    3. Check all columns of BOM
    4. Generate `bill_of_materials.csv` and `bom.json`
        ```
        make bom
        make stats
        ```
    5. Check /bom URL
        ```
        make
        ```
    6. Add extra BOM items in `bill_of_materials.csv` manually
        Battery
        Antenna
        Screw, nuts, spacers
        SWD programming cable

======= How to generate iBOM ======

    1. Go to PCB Layout
    2. Click iBOM menu item
    3. Generate ibom.html
    4. transfer `hardware/bom/ibom.html` to `bom/ibom.html`

====== How to generate BOM Stats file _data/bom.json ======

    1. make stats
-->
