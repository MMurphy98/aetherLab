exit
_probe -file /tmp/plotysmTeZ
open_file /home/undergrad19_exam/zhouchangheng_exam/simulation/zhouchangheng_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
add_panel -1
open_wave -group Doc_Not_Found,0,_calc_wfs_\(0\)
chaxis Log10
chaxis -plot 1 -axis 0 Linear
select_plot 0
select_plot 1
select_plot 0
select_plot 1
select_plot 0
select_plot 1
select_plot 0
move_cursor -id 0 nan 1
move_cursor -id 1 5.5e+07 nan
exit
