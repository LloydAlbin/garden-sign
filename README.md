# garden-sign
Customizable Garden Plant Label Stake

This is a fork of https://www.thingiverse.com/thing:4740308

The STL file allows you to create your own custom plant stakes by changing the following variables.

* text_string = "Plant";
* text_size = 12;
* text_thickness = 3;
* text_font = "Nimbus Sans L:Bold";
* text_y_offset_adjust = 0;
* stake_in_ground_depth = 50;
* stake_min_length = 150;
* stake_thickness = 5;
* stake_height = 5;
* point_length = 10;
* tip_size = 0.5;

The original file just had stake_length, which has been replaced in this forked version with stake_min_length and stake_in_ground_depth.

* stake_min_length is the overall minimum stake length.
* stake_in_ground_depth is the minimum stake in ground depth.

When you enter a long plant name, that exceeds the stake_min_length - stake_in_ground_depth, the system will then use the text length + stake_in_ground_length for the total stake length.

If you want this app to act like the originall app, just set the stake_in_ground_depth to 0.


## Summary
Customizable garden plant label sign.

Text string, font, stake size, etc are all customizable using OpenSCAD or Customizer.

Some example STL output files are attached.

(Note that the dots on i's and j's are detached. Consider splitting the STL file in your Slicer and deleting the detached dots.)

## Print Settings
* Printer brand: Creality
* Printer: Ender 3 Pro
* Rafts: No
* Supports: No
* Resolution: 0.2
* Infill: 25%
* Filament brand: 3D Solutech
* Filament color: Silver Metal (Gray)
* Filament material: PLA

Notes:
For my second make, I scaled up to 150% and used FilaCube Longhorn-Orange PLA2 for improved visibility in the garden.
