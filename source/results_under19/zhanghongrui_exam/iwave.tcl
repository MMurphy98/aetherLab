cross_probe -file /tmp/plotMt2Uoa
open_file /home/undergrad19_exam/zhanghongrui_exam/simulation/zhanghongrui_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
add_panel -1
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(0\)
chaxis Log10
chaxis -plot 1 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(4\)
select_plot 0
zoom_in 0 3.54365e+07 2.09808e+08 0.00632856 24.0533
zoom_in 0 1.03527e+08 1.23437e+08 0.00632856 4.39586
exit
