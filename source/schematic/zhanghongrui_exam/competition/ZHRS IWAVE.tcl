open_file /home/undergrad19_exam/zhanghongrui_exam/simulation/zhanghongrui_exam/competition_testbench_schematic_ALPS/competition_testbench_schematic_Nominal.sp.sim/competition_testbench_schematic_Nominal.sp.ac0 -fid 0
add_panel 0 -name 0.CurvePanel
calc_replot -expr &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#& -displayname Loop_Gain -doc Doc_Not_Found -tableid 0 -name _calc_wfs_\(0\)
chaxis -plot 0 -axis 0 Linear
zoom_in 0 4.81399e+07 5.31743e+07 0.00023767 0.0269728
calc_replot -expr &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#& -displayname Loop_Gain -doc Doc_Not_Found -tableid 0 -name _calc_wfs_\(0\)
chaxis -plot 1 -axis 0 None
zoom_in 1 4.81399e+07 5.31743e+07 99.6728 179.971
open_wave -name v\(vinn\) -plotid 2 -tableid 0 -fid 0
chaxis -plot 2 -axis 0 Linear
zoom_in 2 4.81399e+07 5.31743e+07 0.973736 0.999799
open_wave -name v\(vinn\) -plotid 3 -tableid 0 -fid 0
chaxis -plot 3 -axis 0 None
zoom_in 3 4.81399e+07 5.31743e+07 -179.999 -179.244
open_wave -name v\(vout\) -plotid 4 -tableid 0 -fid 0
chaxis -plot 4 -axis 0 Linear
zoom_in 4 4.81399e+07 5.31743e+07 0.000237619 0.0262644
open_wave -name v\(vout\) -plotid 5 -tableid 0 -fid 0
chaxis -plot 5 -axis 0 None
zoom_in 5 4.81399e+07 5.31743e+07 -80.1986 -0.0286051
chaxis Log10
calc_history start
calc_history Name_Not_Found,_calc_wfs_\(0\),&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc_history end
