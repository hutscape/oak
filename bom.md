---
layout: bom
title: Bill of Materials
permalink: /bom
sequence: 4
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
    1. Ensure Netlist and XML files are latest
    2. Go to PCB Layout
    3. Click iBOM menu item
    4. Change the directory in General > Directory > /hutscape/{PROJECT}/bom/
    5. Show first pin in Html default > Check "Highlight first pin"
    6. Add DNP as a column in Extra fields > Check "DNP"
    7. Generate ibom.html by clicking "Generate BOM"

====== How to generate BOM Stats file _data/bom.json ======

    1. make stats
-->
