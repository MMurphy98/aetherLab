exit
_probe -file /tmp/plotGgHQn8
open_file /home/undergrad19_exam/huangweiliang_exam/simulation/huangweiliang_exam/competition_testbench_schematic_ALPS/competition_testbench_schematic_Nominal.sp.sim/competition_testbench_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
add_panel -1
open_file /home/undergrad19_exam/huangweiliang_exam/simulation/huangweiliang_exam/competition_testbench_schematic_ALPS/competition_testbench_schematic_Nominal.sp.sim/competition_testbench_schematic_Nominal.sp.sw0
calc &f<1>::s<v(vout)>@0#&/&f<1>::s<v(vinn)>@0#&
open_wave -group Doc_Not_Found,0,_calc_wfs_\(0\)
chaxis Log10
chaxis -plot 1 -axis 0 Linear
add_panel -1
open_wave -group Doc_Not_Found,0,_calc_wfs_\(1\)
chaxis Linear
change_panel 0.CurvePanel
select_plot 0
move_cursor -id 0 nan 1
move_cursor -id 1 5.1e+07 nan
chaxis -plot 1 -axis 0 DB20
move_cursor -id 1 4.51864e+07 477.509
move_cursor -id 1 3.2503e+07 477.509
move_cursor -id 1 2.33797e+07 477.509
move_cursor -id 1 1.2502e+07 477.509
move_cursor -id 1 5.13632e+06 477.509
move_cursor -id 1 1.97564e+06 477.509
move_cursor -id 1 368110 477.509
move_cursor -id 1 73259.7 477.509
move_cursor -id 1 10147.5 477.509
move_cursor -id 1 1232.03 477.509
move_cursor -id 1 149.582 462.718
move_cursor -id 1 13.0634 444.231
move_cursor -id 1 1 423.894
move_cursor -id 1 1 412.801
move_cursor -id 1 1 390.616
move_cursor -id 1 1 379.523
move_cursor -id 1 1 368.43
move_cursor -id 1 1 364.732
move_cursor -id 1 1 361.035
move_cursor -id 1 1 359.186
exit
