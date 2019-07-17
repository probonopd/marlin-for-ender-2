M104 S200 T0 ; Heat Extruder
M140 S50 ; Heat Bed
M109 S200 T0 ; Wait for Extruder Temperature
M190 S50 ; Wait for Bed Temperature

G28 X Y Z ; Home

M117 Point 1
G0 X20.0 Y60.0 Z0.0 F3000 ; 20 60
M0 ; Wait for button press

M117 Point 2
G0 X115.0 Y30.0 Z0.0 F3000 ; 115 30
M0 ; Wait for button press

M117 Point 3
G0 X95.0 Y130.0 Z0.0 F3000 ; 95 130
M0  ; Wait for button press

M117 Done
G0 X0.0 Y0.0 Z20.0 F3000 ;