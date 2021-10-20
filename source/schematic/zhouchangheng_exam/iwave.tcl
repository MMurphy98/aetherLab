exit
_probe -file /tmp/plotFCnVgQ
open_file /home/undergrad19_exam/zhouchangheng_exam/simulation/zhouchangheng_exam/competition_testbench_schematic_ALPS/competition_testbench_schematic_Nominal.sp.sim/competition_testbench_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
add_panel -1
open_wave -group Doc_Not_Found,0,_calc_wfs_\(0\)
chaxis Log10
chaxis -plot 1 -axis 0 Linear
select_plot 0
move_cursor -id 0 nan 1
move_cursor -id 1 5.1e+07 nan
exit
