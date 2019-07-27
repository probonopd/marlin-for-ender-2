; NOTE: M0 does not seem to work on stock Ender-3 firmware

M104 S200 T0 ; Heat Extruder
M140 S50 ; Heat Bed
M109 S200 T0 ; Wait for Extruder Temperature
M190 S50 ; Wait for Bed Temperature

G28 X Y Z ; Home

M117 Point 1
G0 X30.0 Y40.0 Z0.0 F3000
M0 ; Wait for button press

M117 Point 2
G0 X200.0 Y40.0 Z0.0 F3000
M0 ; Wait for button press

M117 Point 3
G0 X200.0 Y205.0 Z0.0 F3000
M0  ; Wait for button press

M117 Point 4
G0 X30.0 Y205.0 Z0.0 F3000
M0  ; Wait for button press

M117 Done
G0 X0.0 Y0.0 Z20.0 F3000 ;
