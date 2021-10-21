cross_probe -file /tmp/plotEybt0l
open_file /home/undergrad19_exam/shiyunjiao_exam/simulation/shiyunjiao_exam/competition_testbench_schematic_ALPS/competition_testbench_schematic_Nominal.sp.sim/competition_testbench_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
add_panel -1
calc &f<0>::s<isub(xi0.vdda)>@0#&*&f<0>::s<v(vdda)>@0#&
open_wave -group Doc_Not_Found,0,_calc_wfs_\(0\)
chaxis Log10
chaxis -plot 1 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(1\)
chaxis -plot 3 -axis 0 Linear
exit
