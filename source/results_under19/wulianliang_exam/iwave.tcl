cross_probe -file /tmp/plotQvAHH4
open_file /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
add_panel -1
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(0\)
chaxis Log10
chaxis -plot 1 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(4\)
add_meter -DataXY
set_meter -id 0 ValueType=0++RangeTarget=0++UserMax=0++UserMin=0++LockedLevel=0
mv_mark -id 2 -plotindex 2 5.028307E+05 3.738555E+01
mv_mark -id 2 -plotindex 2 3.869704E+05 4.669515E+01
mv_mark -id 2 -plotindex 2 2.729097E+05 5.879764E+01
mv_mark -id 2 -plotindex 1 1.044618E+05 -1.533262E+02
mv_mark -id 2 -plotindex 1 4.269055E+04 -6.160516E+01
mv_mark -id 2 -plotindex 1 2.528387E+04 -3.005608E+00
mv_mark -id 2 -plotindex 1 1.945806E+04 2.502027E+01
mv_mark -id 2 -plotindex 1 1.783138E+04 3.775930E+01
mv_mark -id 2 -plotindex 1 1.706976E+04 4.030711E+01
mv_mark -id 2 -plotindex 1 1.634068E+04 4.030711E+01
mv_mark -id 2 -plotindex 1 1.598790E+04 4.030711E+01
mv_mark -id 2 -plotindex 1 1.465132E+04 4.540272E+01
mv_mark -id 2 -plotindex 1 1.402553E+04 4.540272E+01
mv_mark -id 2 -plotindex 1 1.313661E+04 4.540272E+01
mv_mark -id 2 -plotindex 1 1.203840E+04 4.540272E+01
mv_mark -id 2 -plotindex 1 1.152422E+04 4.540272E+01
mv_mark -id 2 -plotindex 1 1.127542E+04 4.795053E+01
mv_mark -id 2 -plotindex 1 1.033280E+04 4.795053E+01
mv_mark -id 2 -plotindex 1 9.064544E+03 4.795053E+01
mv_mark -id 2 -plotindex 1 6.825323E+03 4.795053E+01
mv_mark -id 2 -plotindex 1 4.813539E+03 4.795053E+01
mv_mark -id 2 -plotindex 1 3.955090E+03 4.795053E+01
mv_mark -id 2 -plotindex 1 3.179579E+03 5.559395E+01
mv_mark -id 2 -plotindex 1 2.729097E+03 5.559395E+01
mv_mark -id 2 -plotindex 1 2.556130E+03 6.068956E+01
mv_mark -id 2 -plotindex 1 2.446953E+03 6.068956E+01
mv_mark -id 2 -plotindex 1 2.291868E+03 6.068956E+01
mv_mark -id 2 -plotindex 1 2.100269E+03 6.068956E+01
mv_mark -id 2 -plotindex 1 1.924687E+03 6.068956E+01
mv_mark -id 2 -plotindex 1 1.763784E+03 6.068956E+01
mv_mark -id 2 -plotindex 1 1.651998E+03 6.068956E+01
mv_mark -id 2 -plotindex 1 1.616333E+03 6.068956E+01
mv_mark -id 2 -plotindex 1 1.547296E+03 6.068956E+01
mv_mark -id 2 -plotindex 1 1.481208E+03 6.068956E+01
mv_mark -id 2 -plotindex 1 1.357380E+03 6.578517E+01
mv_mark -id 2 -plotindex 1 1.328075E+03 6.578517E+01
mv_mark -id 2 -plotindex 1 1.243904E+03 6.578517E+01
mv_mark -id 2 -plotindex 1 1.139914E+03 6.833298E+01
mv_mark -id 2 -plotindex 1 1.115304E+03 6.833298E+01
mv_mark -id 2 -plotindex 1 1.067667E+03 6.833298E+01
mv_mark -id 2 -plotindex 1 1.044618E+03 6.833298E+01
mv_mark -id 2 -plotindex 1 8.966163E+02 6.833298E+01
mv_mark -id 2 -plotindex 1 8.397898E+02 6.833298E+01
mv_mark -id 2 -plotindex 1 7.695838E+02 6.833298E+01
mv_mark -id 2 -plotindex 1 7.052470E+02 7.342859E+01
mv_mark -id 2 -plotindex 1 6.900214E+02 7.342859E+01
mv_mark -id 2 -plotindex 1 7.367134E+02 7.852421E+01
mv_mark -id 2 -plotindex 1 7.695838E+02 7.852421E+01
mv_mark -id 2 -plotindex 1 8.039208E+02 7.852421E+01
mv_mark -id 2 -plotindex 1 8.397898E+02 7.852421E+01
mv_mark -id 2 -plotindex 1 8.772593E+02 7.852421E+01
mv_mark -id 2 -plotindex 1 8.966163E+02 7.852421E+01
mv_mark -id 2 -plotindex 1 9.784110E+02 8.361982E+01
mv_mark -id 2 -plotindex 1 1.000000E+03 8.361982E+01
mv_mark -id 2 -plotindex 1 1.044618E+03 8.361982E+01
mv_mark -id 2 -plotindex 1 1.067667E+03 8.871543E+01
mv_mark -id 2 -plotindex 1 1.115304E+03 8.871543E+01
mv_mark -id 2 -plotindex 1 1.139914E+03 8.871543E+01
mv_mark -id 2 -plotindex 1 1.190774E+03 8.871543E+01
mv_mark -id 2 -plotindex 1 1.243904E+03 8.871543E+01
mv_mark -id 2 -plotindex 1 1.271351E+03 9.126324E+01
mv_mark -id 2 -plotindex 1 1.513892E+03 9.126324E+01
mv_mark -id 2 -plotindex 1 1.688450E+03 9.126324E+01
mv_mark -id 2 -plotindex 1 1.763784E+03 9.126324E+01
mv_mark -id 2 -plotindex 1 1.883135E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 2.054926E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 2.100269E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 2.193978E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 2.291868E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 2.342439E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 2.500946E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 2.612532E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 2.729097E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 2.789315E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 2.913768E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 3.043773E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 3.179579E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 3.321445E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 3.624447E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 3.869704E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 4.222721E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 4.508462E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 4.709619E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 4.813539E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 5.028307E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 5.139259E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 5.608092E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 6.119696E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 7.287176E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 7.951955E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 8.677380E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 8.868850E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 9.264557E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 9.468983E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 9.891466E+03 9.890666E+01
mv_mark -id 2 -plotindex 1 1.033280E+04 9.890666E+01
mv_mark -id 2 -plotindex 1 1.152422E+04 9.890666E+01
mv_mark -id 2 -plotindex 1 1.372274E+04 9.890666E+01
mv_mark -id 2 -plotindex 1 1.564274E+04 9.890666E+01
mv_mark -id 2 -plotindex 1 1.783138E+04 9.890666E+01
mv_mark -id 2 -plotindex 1 1.945806E+04 9.890666E+01
mv_mark -id 2 -plotindex 1 1.988741E+04 9.890666E+01
mv_mark -id 2 -plotindex 1 2.077474E+04 9.890666E+01
mv_mark -id 2 -plotindex 1 2.123314E+04 9.890666E+01
mv_mark -id 2 -plotindex 1 2.317015E+04 9.890666E+01
mv_mark -id 2 -plotindex 1 2.528387E+04 9.381105E+01
mv_mark -id 2 -plotindex 1 2.584177E+04 9.381105E+01
mv_mark -id 2 -plotindex 1 2.699477E+04 9.381105E+01
mv_mark -id 2 -plotindex 1 2.584177E+04 9.381105E+01
mv_mark -id 2 -plotindex 1 2.317015E+04 1.014545E+02
mv_mark -id 2 -plotindex 1 2.123314E+04 1.141935E+02
mv_mark -id 2 -plotindex 1 1.945806E+04 1.192891E+02
mv_mark -id 2 -plotindex 1 1.783138E+04 1.243847E+02
mv_mark -id 2 -plotindex 1 1.670124E+04 1.294803E+02
mv_mark -id 2 -plotindex 1 1.497461E+04 1.345760E+02
mv_mark -id 2 -plotindex 0 1.203840E+04 -1.719542E+03
mv_mark -id 2 -plotindex 0 9.468983E+03 -1.538536E+03
mv_mark -id 2 -plotindex 0 7.780281E+03 -1.267027E+03
mv_mark -id 2 -plotindex 0 6.677971E+03 -1.267027E+03
mv_mark -id 2 -plotindex 0 5.139259E+03 -1.176524E+03
mv_mark -id 2 -plotindex 0 4.042361E+03 -8.145118E+02
mv_mark -id 2 -plotindex 0 3.321445E+03 -8.145118E+02
mv_mark -id 2 -plotindex 0 2.394126E+03 -5.430027E+02
mv_mark -id 2 -plotindex 0 1.763784E+03 -9.048748E+01
mv_mark -id 2 -plotindex 0 1.616333E+03 -9.048748E+01
mv_mark -id 2 -plotindex 0 1.547296E+03 -9.048748E+01
mv_mark -id 2 -plotindex 0 1.481208E+03 -9.048748E+01
mv_mark -id 2 -plotindex 0 1.449230E+03 -9.048748E+01
mv_mark -id 2 -plotindex 0 1.417943E+03 -9.048748E+01
mv_mark -id 2 -plotindex 0 1.357380E+03 9.051860E+01
mv_mark -id 2 -plotindex 0 1.243904E+03 4.525307E+02
mv_mark -id 2 -plotindex 0 1.165066E+03 9.955490E+02
add_cursor -x
move_cursor -id 0 168845 361.331
move_cursor -id 0 180270 361.331
move_cursor -id 0 196716 361.331
move_cursor -id 0 224239 361.331
move_cursor -id 0 261253 356.235
move_cursor -id 0 304377 356.235
move_cursor -id 0 324974 356.235
move_cursor -id 0 354620 351.14
move_cursor -id 0 386970 351.14
move_cursor -id 0 441113 346.044
move_cursor -id 0 513926 346.044
move_cursor -id 0 560809 340.948
move_cursor -id 0 598758 340.948
move_cursor -id 0 653380 340.948
move_cursor -id 0 667797 340.948
move_cursor -id 0 728718 340.948
move_cursor -id 0 795196 335.853
move_cursor -id 0 967792 330.757
move_cursor -id 0 1.15242e+06 325.661
move_cursor -id 0 1.40255e+06 325.661
move_cursor -id 0 1.63407e+06 318.018
move_cursor -id 0 1.78314e+06 318.018
move_cursor -id 0 1.82248e+06 318.018
move_cursor -id 0 1.9038e+06 318.018
move_cursor -id 0 2.12331e+06 315.47
move_cursor -id 0 2.21805e+06 315.47
move_cursor -id 0 2.52839e+06 315.47
move_cursor -id 0 2.58418e+06 315.47
move_cursor -id 0 2.69948e+06 315.47
move_cursor -id 0 2.88214e+06 310.375
move_cursor -id 0 3.01074e+06 310.375
move_cursor -id 0 3.07717e+06 310.375
move_cursor -id 0 3.21447e+06 310.375
move_cursor -id 0 3.35789e+06 305.279
move_cursor -id 0 3.58511e+06 305.279
move_cursor -id 0 3.91216e+06 305.279
move_cursor -id 0 4.26906e+06 305.279
move_cursor -id 0 4.36325e+06 305.279
move_cursor -id 0 4.55793e+06 305.279
move_cursor -id 0 4.6585e+06 305.279
move_cursor -id 0 4.7613e+06 305.279
move_cursor -id 0 4.97373e+06 305.279
move_cursor -id 0 5.19565e+06 305.279
move_cursor -id 0 5.54723e+06 305.279
move_cursor -id 0 6.75125e+06 300.183
move_cursor -id 0 9.36621e+06 292.54
move_cursor -id 0 1.27135e+07 284.897
move_cursor -id 0 1.61633e+07 284.897
move_cursor -id 0 1.92469e+07 279.801
move_cursor -id 0 2.24239e+07 279.801
move_cursor -id 0 2.61253e+07 274.705
move_cursor -id 0 2.7291e+07 274.705
move_cursor -id 0 2.78932e+07 274.705
move_cursor -id 0 2.91377e+07 274.705
move_cursor -id 0 3.11094e+07 274.705
move_cursor -id 0 3.24974e+07 274.705
move_cursor -id 0 3.32144e+07 274.705
move_cursor -id 0 3.62445e+07 274.705
move_cursor -id 0 3.95509e+07 274.705
move_cursor -id 0 4.3159e+07 274.705
move_cursor -id 0 5.02831e+07 269.61
move_cursor -id 0 5.98758e+07 269.61
move_cursor -id 0 6.97593e+07 264.514
move_cursor -id 0 7.44797e+07 264.514
move_cursor -id 0 8.12742e+07 264.514
move_cursor -id 0 8.49004e+07 264.514
move_cursor -id 0 8.67738e+07 264.514
move_cursor -id 0 8.86885e+07 261.966
move_cursor -id 0 8.86885e+07 259.418
move_cursor -id 0 9.26456e+07 259.418
move_cursor -id 0 9.46898e+07 259.418
move_cursor -id 0 9.89147e+07 259.418
move_cursor -id 0 1.05608e+08 256.871
move_cursor -id 0 1.05608e+08 254.323
move_cursor -id 0 1.1032e+08 254.323
move_cursor -id 0 1.15242e+08 254.323
move_cursor -id 0 1.17785e+08 254.323
move_cursor -id 0 1.15242e+08 254.323
move_cursor -id 0 1.12754e+08 254.323
move_cursor -id 0 1.05608e+08 254.323
move_cursor -id 0 1.01097e+08 254.323
move_cursor -id 0 9.26456e+07 254.323
move_cursor -id 0 8.86885e+07 254.323
move_cursor -id 0 8.67738e+07 251.775
move_cursor -id 0 8.30675e+07 251.775
move_cursor -id 0 7.95196e+07 251.775
move_cursor -id 0 7.78028e+07 251.775
move_cursor -id 0 7.44797e+07 251.775
move_cursor -id 0 7.28718e+07 251.775
move_cursor -id 0 6.67797e+07 251.775
move_cursor -id 0 6.5338e+07 251.775
move_cursor -id 0 6.25473e+07 251.775
move_cursor -id 0 6.1197e+07 251.775
move_cursor -id 0 5.85831e+07 251.775
move_cursor -id 0 5.73184e+07 251.775
move_cursor -id 0 5.60809e+07 249.227
move_cursor -id 0 5.60809e+07 246.679
move_cursor -id 0 5.60809e+07 244.132
move_cursor -id 0 5.73184e+07 244.132
move_cursor -id 0 5.98758e+07 244.132
move_cursor -id 0 6.1197e+07 244.132
cross_probe -file /tmp/plotSy1it6
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(10\)
chaxis -plot 4 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(14\)
cross_probe -file /tmp/plotwf5ohs
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(25\)
chaxis -plot 7 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(29\)
cross_probe -file /tmp/plotc3gLPr
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(45\)
chaxis -plot 10 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(49\)
move_cursor -id 0 5.48702e+07 -194.076
move_cursor -id 0 5.85831e+07 -194.076
move_cursor -id 0 5.98758e+07 -196.745
move_cursor -id 0 6.1197e+07 -196.745
move_cursor -id 0 6.25473e+07 -196.745
move_cursor -id 0 6.5338e+07 -196.745
move_cursor -id 0 6.67797e+07 -196.745
move_cursor -id 0 6.97593e+07 -196.745
move_cursor -id 0 7.28718e+07 -196.745
move_cursor -id 0 7.12985e+07 -194.076
move_cursor -id 0 6.82532e+07 -194.076
move_cursor -id 0 6.67797e+07 -191.407
move_cursor -id 0 6.5338e+07 -191.407
move_cursor -id 0 6.1197e+07 -188.738
move_cursor -id 0 5.85831e+07 -183.401
move_cursor -id 0 5.60809e+07 -178.063
cross_probe -file /tmp/plot8ohxIC
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(70\)
chaxis -plot 13 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(74\)
cross_probe -file /tmp/plot81vAQ2
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(100\)
chaxis -plot 16 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(104\)
cross_probe -file /tmp/plotIQKv6K
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(135\)
chaxis -plot 19 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(139\)
cross_probe -file /tmp/plotKPFNDg
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(175\)
chaxis -plot 22 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(179\)
cross_probe -file /tmp/plotIIbexe
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(220\)
chaxis -plot 25 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(224\)
move_cursor -id 0 5.73184e+07 140.089
move_cursor -id 0 5.73184e+07 142.821
move_cursor -id 0 5.85831e+07 142.821
move_cursor -id 0 5.98758e+07 142.821
move_cursor -id 0 6.1197e+07 142.821
move_cursor -id 0 6.25473e+07 142.821
move_cursor -id 0 6.39274e+07 145.553
move_cursor -id 0 6.5338e+07 148.286
cross_probe -file /tmp/plotonXeCx
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(270\)
chaxis -plot 28 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(274\)
cross_probe -file /tmp/plotOI2YdH
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(325\)
chaxis -plot 31 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(329\)
cross_probe -file /tmp/plotcltdTS
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(385\)
chaxis -plot 34 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(389\)
move_cursor -id 0 5.98758e+07 -60.7523
move_cursor -id 0 5.98758e+07 -63.5562
move_cursor -id 0 5.73184e+07 -63.5562
move_cursor -id 0 5.60809e+07 -63.5562
move_cursor -id 0 5.36856e+07 -66.3602
move_cursor -id 0 5.13926e+07 -66.3602
move_cursor -id 0 5.25266e+07 -66.3602
move_cursor -id 0 5.60809e+07 -66.3602
move_cursor -id 0 5.73184e+07 -66.3602
move_cursor -id 0 5.60809e+07 -66.3602
move_cursor -id 0 5.48702e+07 -66.3602
move_cursor -id 0 5.13926e+07 -63.5562
move_cursor -id 0 5.02831e+07 -63.5562
move_cursor -id 0 5.25266e+07 -63.5562
cross_probe -file /tmp/plotYEIKli
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(450\)
chaxis -plot 37 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(454\)
move_cursor -id 0 5.73184e+07 -46.596
move_cursor -id 0 5.98758e+07 -46.596
move_cursor -id 0 6.1197e+07 -46.596
move_cursor -id 0 5.98758e+07 -46.596
move_cursor -id 0 5.73184e+07 -40.9775
move_cursor -id 0 5.60809e+07 -40.9775
move_cursor -id 0 5.48702e+07 -40.9775
cross_probe -file /tmp/plotQOSG5W
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(520\)
chaxis -plot 40 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(524\)
cross_probe -file /tmp/plotwiO9ur
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(595\)
chaxis -plot 43 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(599\)
cross_probe -file /tmp/plotGNAGfS
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(675\)
chaxis -plot 46 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(679\)
cross_probe -file /tmp/plotgwiP2G
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(760\)
chaxis -plot 49 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(764\)
cross_probe -file /tmp/plotKoOOWr
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(850\)
chaxis -plot 52 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(854\)
cross_probe -file /tmp/plotqlXe9O
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(945\)
chaxis -plot 55 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(949\)
cross_probe -file /tmp/plotWdPPhX
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(1045\)
chaxis -plot 58 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(1049\)
cross_probe -file /tmp/plot4QdSHM
reload /home/undergrad19_exam/wulianliang_exam/simulation/wulianliang_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(1150\)
chaxis -plot 61 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(1154\)
move_cursor -id 0 6.1197e+07 -116.198
move_cursor -id 0 5.85831e+07 -116.198
move_cursor -id 0 5.60809e+07 -116.198
move_cursor -id 0 5.48702e+07 -113.336
move_cursor -id 0 5.36856e+07 -113.336
move_cursor -id 0 5.13926e+07 -113.336
move_cursor -id 0 5.25266e+07 -113.336
move_cursor -id 0 5.36856e+07 -113.336
