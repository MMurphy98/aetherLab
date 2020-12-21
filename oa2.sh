#!/bin/bash
oa2netlist "Three_Order_OTA" "NMC_100MHz_TB" "config_STB" -t mhspice -o "/home/postgrad21/majinge/Aether/lab8_result/Three_Order.netlist" -mf "/home/postgrad21/majinge/Aether/lab8_result/Three_Order.netlist.map" -hier -disp -name keep -max 80 -ntlviewlist hspiceText hspiceD spice schematic veriloga -ntlstoplist hspiceText hspiceD spice -glo -as0 -ael -suf -noexclam -pow "VDD! VCC! VEE! vdd! vcc!" -gnd "GND! GROUND! gnd! vss!" -end -cir : -quo single -del '<' -exprquo quotation -gsub -printMFactor -mdeparam "R vbn2 vbp2 Ib Cc" 

