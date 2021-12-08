exit
_probe -file /tmp/plotmjpxda
open_file /home/undergrad19_exam/shiyunjiao_exam/simulation/shiyunjiao_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
add_panel -1
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(0\)
chaxis Log10
chaxis -plot 1 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(4\)
exit
