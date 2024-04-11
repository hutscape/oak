---
layout: pcb
title: PCB
permalink: /pcb
sequence: 2

three_d: true
pcb_layout: true
gerber: true

# maximum number of images prototype-n.jpg in folder images/pcb/prototype
max_prototype_images: 2

manufacturing_params_image: pcbway.png
manufacturing_params:
  - name: "Manufacturer"
    value: "PCBWay"
  - name: "Size"
    value: "100 x 40 mm"
  - name: "Layers"
    value: "2"
  - name: "PCB Thickness"
    value: "1.6 mm"
  - name: "Min hole size:"
    value: "0.3 mm"
  - name: "Silkscreen"
    value: "White"
  - name: "Surface Finish"
    value: "HASL lead free"
  - name: "Via process"
    value: "Tenting vias"
  - name: "Date code"
    value: "None"
  - name: "Quantity"
    value: "5"
  - name: "PCB Material"
    value: "FR-4: TG130"
  - name: "Min track/spacing"
    value: "6/6mil"
  - name: "Solder Mask"
    value: "Green"
  - name: "Edge connector"
    value: "No"
  - name: "HASL to ENIG"
    value: "No"
  - name: "Finished Copper"
    value: "1oz Cu"
  - name: "UL marking"
    value: "No"
---

<!-- Steps to update hardware

Schematic in KiCad:
1. Change issue date and version of the schematic:
    File > Page Settings > Issue Date
    File > Page Settings > Revision
1. Create a schematic PDF file `schematic.pdf`
    File > Print > Check Print sheet reference and title block > Print > Save as PDF > Title : Project name V1.0 > Save in pcb/docs/schematic.pdf
1. Create a schematic PNG file `schematic.png`
    Open schematic.pdf in Preview > Format: PNG > Resolution 300 > schematic.png > images/pcb/schematic.png

PCB Layout in KiCad:
1. Change version number and date in layout Silscreen
1. Change issue date of the layout:
    File > Page Settings > Issue Date
1. Create a layout PDF file `layout.pdf`
    File > Print > Check `F.Cu`, `B.Cu`, `F.SilkS`, `B.SilkS`, `F.Mask`, `B.Mask`, `Edge.Cuts`, `F.CrtYrd`, `B.CrtYrd`, `F.Fab`, `B.Fab` > Save as PDF > Title : Project name V1.0 > Save in pcb/docs/layout.pdf
1. Create back layer screenshot `layout-back.png`
    View > Uncheck Show Grid > Enable all Front / Back layers > Select Silscreen layer > Flip view for Back layer > Take a screenshot
1. Create front layer screenshot of `layout-front.png`
1. Create screenshots of the 3D view `3dview-back.png` and `3dview-front.png`
    File > View > 3D Viewer > File > Export current view as PNG > images/pcb/3dview-front.png
-->
