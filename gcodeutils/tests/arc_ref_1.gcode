M107
M190 S125 ; set bed temperature
G28 ; home all axes
G1 Z5 F5000 ; lift nozzle
M109 S270 ; wait for extruder temp to be reached
M3001 ; Aktivate Z-Compensation
M3004 S0 ; + n-steps bed down // - n-steps bed up!
G90 ; use absolute coordinates
M82 ; use absolute distances for extrusion
G92 E0 ; start line
G1 F300 E-0.5
G1 X230 Y25 Z0.35 F5000
G1 F800 E8
G1 X20 E25 F1000
M201 X1000 Y1000 Z1000
M202 X3000 Y3000 Z1000
G21 ; set units to millimeters
G90 ; use absolute coordinates
M82 ; use absolute distances for extrusion
G92 E0
G1 E-1.00000 F600.00000
G92 E0
G1 Z0.350 F6000.000
G1 X20 Y20 Z0.0000 E0
G1 X80 Y20 Z0.0000 E60
G1 X80 Y60 Z0.0000 E100
G1 X20 Y60 Z0.0000 E160
G1 X20 Y20 Z0.0000 E200
G92 E0
; begin of test data to be converted into arc
M83
G0 X100.000 Y20.000 Z0  first layer
G1 X100.000 Y60.000 E1.111111
G3 X80.000 Y80.000 E0.87267 F6000.000 I-20.000 J-0.000; generated from 8 segments
G1 X20.000 Y80.000 E1.666667
G3 X0.000 Y60.000 E0.87267 F6000.000 I0.000 J-20.000; generated from 8 segments
G1 X0.000 Y20.000 E1.111111
G3 X20.000 Y0.000 E0.87267 F6000.000 I20.000 J0.000; generated from 8 segments
G1 X80.000 Y0.000 E1.666667
G3 X100.000 Y20.000 E0.87267 F6000.000 I-0.000 J20.000; generated from 8 segments
G0 Z1.000 ; next layer
G2 X80.000 Y0.000 E0.87267 F6000.000 I-20.000 J0.000; generated from 8 segments
G1 X20.000 Y0.000 E1.666667
G2 X0.000 Y20.000 E0.87267 F6000.000 I0.000 J20.000; generated from 8 segments
G1 X0.000 Y60.000 E1.111111
G2 X20.000 Y80.000 E0.87267 F6000.000 I20.000 J-0.000; generated from 8 segments
G1 X80.000 Y80.000 E1.666667
G2 X100.000 Y60.000 E0.87267 F6000.000 I-0.000 J-20.000; generated from 8 segments
G1 X100.000 Y20.000 E1.1111
G0 X0 Y0 Z2
M82 ; switch back to absolute
G92 E0
; some real world data to be reduced to 1 arc from 64 segments
G1 X59.420 Y190.462 F6000.000
G1 X59.663 Y190.337 F6000.000
G1 X59.663 Y84.663 E15.29297 F1080.000
G1 X185.337 Y84.663 E18.43871
G1 X185.337 Y190.337 E21.08384
G1 X59.738 Y190.337 E24.22770
G1 X67.082 Y94.742 F6000.000
G3 X67.157 Y94.746 E24.89625 F900.000 I0.4180 J-4.2420; generated from 64 segments
G1 X66.833 Y95.078 F6000.000
G1 X67.060 Y95.192 F6000.000
G92 E0
M104 S0
M140 S0
G91
G1 E-5 F300
M400
M3079
M400
M84
M201 X1000 Y1000 Z1000
M202 X1000 Y1000 Z1000