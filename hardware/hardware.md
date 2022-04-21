---
layout: hardware
title: Hardware
permalink: /hardware
sequence: 3

three_d: true
pcb_layout: true
gerber: true
---

<!-- Steps to update hardware

Schematic in KiCad:
1. Change issue date and version of the schematic:
    File > Page Settings > Issue Date
    File > Page Settings > Revision
1. Create a schematic PDF file `schematic.pdf`
    File > Print > Check Print sheet reference and title block > Print > Save as PDF > Title : Project name V1.0 > Save in hardware/docs/schematic.pdf
1. Create a schematic PNG file `schematic.png`
    Open schematic.pdf in Preview > Format: PNG > Resolution 300 > schematic.png > images/hardware/schematic.png

PCB Layout in KiCad:
1. Change version number and date in layout Silscreen
1. Change issue date of the layout:
    File > Page Settings > Issue Date
1. Create a layout PDF file `layout.pdf`
    File > Print > Check `F.Cu`, `B.Cu`, `F.SilkS`, `B.SilkS`, `F.Mask`, `B.Mask`, `Edge.Cuts`, `F.CrtYrd`, `B.CrtYrd`, `F.Fab`, `B.Fab` > Save as PDF > Title : Project name V1.0 > Save in hardware/docs/layout.pdf
1. Create back layer screenshot `layout-back.png`
    View > Uncheck Show Grid > Enable all Front / Back layers > Select Silscreen layer > Flip view for Back layer > Take a screenshot
1. Create front layer screenshot of `layout-front.png`
1. Create screenshots of the 3D view `3dview-back.png` and `3dview-front.png`
    File > View > 3D Viewer > File > Export current view as PNG > images/hardware/3dview-front.png
-->
