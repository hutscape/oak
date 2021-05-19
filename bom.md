---
layout: default
title: Bill of Materials
permalink: /bom
sequence: 4
ibom: false
---
 <!-- How to generate BOM

1. Generate a new Netlist
2. Generate a new *.xml file
    Remove all BOM plugins -> Add BOM plugin "bom_csv_grouped_by_value" --> Click Generate
3. Check all columns of BOM
4. Generate `bom.json` and `bill_of_materials.csv`
    ```
    make bom
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
  -->
