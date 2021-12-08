cross_probe -file /tmp/plotTP7Hpo
open_file /home/undergrad19_exam/wangzekun_exam/simulation/wangzekun_exam/final_Question2_schematic_ALPS/final_Question2_schematic_Nominal.sp.sim/final_Question2_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
add_panel -1
calc 2*db10(abs(&f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&))
open_wave -group Doc_Not_Found,0,_calc_wfs_\(0\)
chaxis Log10
chaxis -plot 1 -axis 0 Linear
open_wave -group Doc_Not_Found,0,_calc_wfs_\(4\)
add_meter -DataXY
set_meter -id 0 ValueType=0++RangeTarget=0++UserMax=0++UserMin=0++LockedLevel=0
mv_mark -id 2 -plotindex 2 1.454512E+05 5.047964E+01
mv_mark -id 2 -plotindex 2 1.313661E+05 5.047964E+01
mv_mark -id 2 -plotindex 2 1.071558E+05 5.047964E+01
mv_mark -id 2 -plotindex 2 7.894314E+04 5.047964E+01
mv_mark -id 2 -plotindex 2 5.527084E+04 5.047964E+01
mv_mark -id 2 -plotindex 2 3.585109E+04 5.047964E+01
mv_mark -id 2 -plotindex 2 2.154435E+04 5.047964E+01
mv_mark -id 2 -plotindex 2 1.083316E+04 5.047964E+01
mv_mark -id 2 -plotindex 2 5.879661E+03 5.047964E+01
mv_mark -id 2 -plotindex 2 3.813806E+03 5.047964E+01
mv_mark -id 2 -plotindex 2 2.350975E+03 5.047964E+01
mv_mark -id 2 -plotindex 2 1.604616E+03 5.047964E+01
mv_mark -id 2 -plotindex 2 1.067667E+03 5.047964E+01
mv_mark -id 2 -plotindex 2 7.475112E+02 5.471988E+01
mv_mark -id 2 -plotindex 2 5.507015E+02 5.684000E+01
mv_mark -id 2 -plotindex 2 4.379154E+02 5.684000E+01
mv_mark -id 2 -plotindex 2 3.482284E+02 6.108023E+01
mv_mark -id 2 -plotindex 2 2.988914E+02 6.320035E+01
mv_mark -id 2 -plotindex 2 2.769096E+02 6.320035E+01
mv_mark -id 2 -plotindex 2 2.565445E+02 6.320035E+01
mv_mark -id 2 -plotindex 2 2.201973E+02 6.320035E+01
mv_mark -id 2 -plotindex 2 1.889998E+02 6.532047E+01
mv_mark -id 2 -plotindex 2 1.392387E+02 6.532047E+01
mv_mark -id 2 -plotindex 2 9.748584E+01 6.744059E+01
mv_mark -id 2 -plotindex 2 6.164380E+01 7.062077E+01
mv_mark -id 2 -plotindex 2 4.101608E+01 7.380094E+01
mv_mark -id 2 -plotindex 2 2.593594E+01 7.592106E+01
mv_mark -id 2 -plotindex 2 2.115604E+01 7.592106E+01
mv_mark -id 2 -plotindex 2 1.682319E+01 7.804118E+01
mv_mark -id 2 -plotindex 2 1.558594E+01 8.016130E+01
mv_mark -id 2 -plotindex 2 1.481208E+01 8.016130E+01
mv_mark -id 2 -plotindex 2 1.443968E+01 8.016130E+01
mv_meter -id 0 -plotindex 2 2.82E+05 8.08E+00
mv_meter -id 0 -plotindex 2 2.75E+05 8.08E+00
mv_meter -id 0 -plotindex 2 2.36E+05 7.02E+00
mv_meter -id 0 -plotindex 2 2.24E+05 7.02E+00
mv_meter -id 0 -plotindex 2 1.97E+05 7.02E+00
mv_meter -id 0 -plotindex 2 1.69E+05 7.02E+00
mv_meter -id 0 -plotindex 2 1.38E+05 7.02E+00
mv_meter -id 0 -plotindex 2 1.16E+05 7.02E+00
mv_meter -id 0 -plotindex 2 8.97E+04 7.02E+00
mv_meter -id 0 -plotindex 2 6.61E+04 7.02E+00
mv_meter -id 0 -plotindex 2 4.87E+04 7.02E+00
mv_meter -id 0 -plotindex 2 3.41E+04 7.02E+00
mv_meter -id 0 -plotindex 2 2.57E+04 7.02E+00
mv_meter -id 0 -plotindex 2 1.85E+04 7.02E+00
mv_meter -id 0 -plotindex 2 1.40E+04 7.02E+00
mv_meter -id 0 -plotindex 2 1.08E+04 7.02E+00
mv_meter -id 0 -plotindex 2 8.61E+03 7.02E+00
mv_meter -id 0 -plotindex 2 6.85E+03 7.02E+00
mv_meter -id 0 -plotindex 2 6.35E+03 7.02E+00
mv_meter -id 0 -plotindex 2 5.73E+03 7.02E+00
mv_meter -id 0 -plotindex 2 5.05E+03 7.02E+00
mv_meter -id 0 -plotindex 2 4.56E+03 7.02E+00
mv_meter -id 0 -plotindex 2 4.33E+03 8.08E+00
mv_meter -id 0 -plotindex 2 4.12E+03 9.14E+00
mv_meter -id 0 -plotindex 2 3.91E+03 1.13E+01
mv_meter -id 0 -plotindex 2 3.81E+03 1.13E+01
mv_meter -id 0 -plotindex 2 3.53E+03 1.13E+01
mv_meter -id 0 -plotindex 2 3.36E+03 1.34E+01
mv_meter -id 0 -plotindex 2 3.19E+03 1.44E+01
mv_meter -id 0 -plotindex 2 2.96E+03 1.55E+01
mv_meter -id 0 -plotindex 2 2.74E+03 1.55E+01
mv_meter -id 0 -plotindex 2 2.54E+03 1.76E+01
mv_meter -id 0 -plotindex 2 2.35E+03 1.97E+01
mv_meter -id 0 -plotindex 2 2.18E+03 2.08E+01
mv_meter -id 0 -plotindex 2 1.97E+03 2.19E+01
mv_meter -id 0 -plotindex 2 1.69E+03 2.61E+01
mv_meter -id 0 -plotindex 2 1.49E+03 2.72E+01
mv_meter -id 0 -plotindex 2 1.28E+03 2.93E+01
mv_meter -id 0 -plotindex 2 1.15E+03 3.03E+01
mv_meter -id 0 -plotindex 2 1.04E+03 3.14E+01
mv_meter -id 0 -plotindex 2 9.64E+02 3.35E+01
mv_meter -id 0 -plotindex 2 8.49E+02 3.46E+01
mv_meter -id 0 -plotindex 2 7.67E+02 3.67E+01
mv_meter -id 0 -plotindex 2 6.75E+02 3.88E+01
mv_meter -id 0 -plotindex 2 6.10E+02 4.20E+01
mv_meter -id 0 -plotindex 2 5.65E+02 4.31E+01
mv_meter -id 0 -plotindex 2 4.85E+02 4.52E+01
mv_meter -id 0 -plotindex 2 4.16E+02 4.52E+01
mv_meter -id 0 -plotindex 2 3.76E+02 4.73E+01
mv_meter -id 0 -plotindex 2 3.39E+02 4.84E+01
mv_meter -id 0 -plotindex 2 3.15E+02 4.94E+01
mv_meter -id 0 -plotindex 2 2.91E+02 4.94E+01
mv_meter -id 0 -plotindex 2 2.84E+02 4.94E+01
mv_meter -id 0 -plotindex 2 2.63E+02 4.94E+01
mv_meter -id 0 -plotindex 2 2.50E+02 4.94E+01
mv_meter -id 0 -plotindex 2 2.38E+02 5.05E+01
mv_meter -id 0 -plotindex 2 2.20E+02 5.05E+01
mv_meter -id 0 -plotindex 2 2.04E+02 5.05E+01
mv_meter -id 0 -plotindex 2 1.99E+02 5.05E+01
mv_meter -id 0 -plotindex 2 1.94E+02 5.05E+01
mv_meter -id 0 -plotindex 2 1.89E+02 5.05E+01
mv_meter -id 0 -plotindex 2 1.80E+02 5.05E+01
mv_meter -id 0 -plotindex 2 1.75E+02 5.05E+01
mv_meter -id 0 -plotindex 2 1.71E+02 5.05E+01
add_meter -DataXY
set_meter -id 3 ValueType=0++RangeTarget=0++UserMax=0++UserMin=0++LockedLevel=0
mv_mark -id 5 -plotindex 2 1.829125E+05 5.577994E+01
mv_mark -id 5 -plotindex 2 1.783138E+05 5.790006E+01
mv_mark -id 5 -plotindex 2 1.382294E+05 6.320035E+01
mv_mark -id 5 -plotindex 2 1.071558E+05 7.062077E+01
mv_mark -id 5 -plotindex 2 6.605493E+04 8.652165E+01
mv_mark -id 5 -plotindex 1 3.772413E+04 -1.659054E+02
mv_mark -id 5 -plotindex 1 1.995988E+04 -1.012781E+02
mv_mark -id 5 -plotindex 1 1.029528E+04 -2.822122E+01
mv_mark -id 5 -plotindex 1 6.186844E+03 3.921594E+01
mv_mark -id 5 -plotindex 1 4.116555E+03 9.260370E+01
mv_mark -id 5 -plotindex 1 2.882144E+03 1.375618E+02
mv_mark -id 5 -plotindex 0 2.178074E+03 -2.933335E+03
mv_mark -id 5 -plotindex 0 1.688450E+03 1.222232E+03
mv_mark -id 5 -plotindex 0 1.275984E+03 4.888908E+03
mv_mark -id 5 -plotindex 0 1.040825E+03 7.822250E+03
mv_mark -id 5 -plotindex 0 8.068505E+02 1.100004E+04
mv_mark -id 5 -plotindex 0 6.925360E+02 1.320004E+04
mv_mark -id 5 -plotindex 0 5.649041E+02 1.515560E+04
mv_mark -id 5 -plotindex 0 4.379154E+02 1.760005E+04
mv_mark -id 5 -plotindex 0 3.664216E+02 1.980006E+04
mv_mark -id 5 -plotindex 0 3.065998E+02 2.200007E+04
mv_mark -id 5 -plotindex 0 2.631608E+02 2.371118E+04
mv_mark -id 5 -plotindex 0 2.146612E+02 2.517785E+04
mv_mark -id 5 -plotindex 0 1.988741E+02 2.640008E+04
mv_mark -id 5 -plotindex 0 1.706976E+02 2.786675E+04
mv_mark -id 5 -plotindex 0 1.502918E+02 2.884453E+04
mv_mark -id 5 -plotindex 0 1.323253E+02 3.031120E+04
mv_mark -id 5 -plotindex 0 1.195114E+02 3.055564E+04
mv_mark -id 5 -plotindex 0 1.052245E+02 3.128898E+04
mv_mark -id 5 -plotindex 0 1.000000E+02 3.177787E+04
mv_mark -id 5 -plotindex 0 9.503489E+01 3.226676E+04
mv_mark -id 5 -plotindex 0 9.264557E+01 3.275565E+04
mv_mark -id 5 -plotindex 0 9.031631E+01 3.324454E+04
mv_mark -id 5 -plotindex 0 8.583201E+01 3.348899E+04
mv_mark -id 5 -plotindex 0 8.367406E+01 3.397788E+04
mv_mark -id 5 -plotindex 0 7.557132E+01 3.397788E+04
mv_mark -id 5 -plotindex 0 7.557132E+01 3.422232E+04
mv_mark -id 5 -plotindex 0 7.367134E+01 3.422232E+04
mv_mark -id 5 -plotindex 0 7.001348E+01 3.422232E+04
mv_mark -id 5 -plotindex 0 6.825323E+01 3.422232E+04
mv_mark -id 5 -plotindex 0 6.653724E+01 3.422232E+04
mv_mark -id 5 -plotindex 0 6.486439E+01 3.422232E+04
mv_meter -id 3 -plotindex 2 3.73E+05 3.84E+00
mv_meter -id 3 -plotindex 2 3.64E+05 4.90E+00
mv_meter -id 3 -plotindex 2 3.55E+05 4.90E+00
mv_meter -id 3 -plotindex 2 3.37E+05 5.96E+00
mv_meter -id 3 -plotindex 2 3.12E+05 9.14E+00
mv_meter -id 3 -plotindex 2 3.04E+05 9.14E+00
mv_meter -id 3 -plotindex 2 2.89E+05 1.13E+01
mv_meter -id 3 -plotindex 2 2.68E+05 1.34E+01
mv_meter -id 3 -plotindex 2 2.24E+05 1.55E+01
mv_meter -id 3 -plotindex 2 1.92E+05 1.97E+01
mv_meter -id 3 -plotindex 2 1.57E+05 2.61E+01
mv_meter -id 3 -plotindex 2 1.16E+05 3.46E+01
mv_meter -id 3 -plotindex 2 8.97E+04 4.31E+01
mv_meter -id 3 -plotindex 2 5.97E+04 5.90E+01
mv_meter -id 3 -plotindex 2 3.97E+04 7.27E+01
select_plot 1
mv_meter -id 3 -plotindex 1 2.64E+04 -2.14E+02
mv_meter -id 3 -plotindex 1 1.67E+04 -1.69E+02
mv_meter -id 3 -plotindex 1 1.11E+04 -1.27E+02
mv_meter -id 3 -plotindex 1 7.98E+03 -9.85E+01
mv_meter -id 3 -plotindex 1 5.18E+03 -6.19E+01
mv_meter -id 3 -plotindex 1 3.53E+03 -2.54E+01
mv_meter -id 3 -plotindex 1 2.74E+03 -1.14E+01
mv_meter -id 3 -plotindex 1 2.12E+03 1.11E+01
mv_meter -id 3 -plotindex 1 1.73E+03 2.52E+01
mv_meter -id 3 -plotindex 1 1.49E+03 4.48E+01
mv_meter -id 3 -plotindex 1 1.21E+03 6.17E+01
mv_meter -id 3 -plotindex 1 1.01E+03 7.86E+01
mv_meter -id 3 -plotindex 1 8.28E+02 9.54E+01
mv_meter -id 3 -plotindex 1 6.75E+02 1.15E+02
select_plot 0
mv_meter -id 3 -plotindex 0 5.65E+02 -6.11E+03
mv_meter -id 3 -plotindex 0 4.73E+02 -4.89E+03
mv_meter -id 3 -plotindex 0 3.86E+02 -3.18E+03
mv_meter -id 3 -plotindex 0 3.07E+02 -1.47E+03
mv_meter -id 3 -plotindex 0 2.63E+02 2.44E+02
mv_meter -id 3 -plotindex 0 2.20E+02 1.22E+03
mv_meter -id 3 -plotindex 0 1.94E+02 2.69E+03
mv_meter -id 3 -plotindex 0 1.75E+02 3.42E+03
mv_meter -id 3 -plotindex 0 1.66E+02 4.16E+03
mv_meter -id 3 -plotindex 0 1.50E+02 4.89E+03
mv_meter -id 3 -plotindex 0 1.50E+02 5.13E+03
mv_meter -id 3 -plotindex 0 1.50E+02 5.38E+03
mv_meter -id 3 -plotindex 0 1.50E+02 5.87E+03
mv_meter -id 3 -plotindex 0 1.50E+02 6.36E+03
mv_meter -id 3 -plotindex 0 1.47E+02 6.60E+03
mv_meter -id 3 -plotindex 0 1.47E+02 7.33E+03
mv_meter -id 3 -plotindex 0 1.47E+02 7.58E+03
mv_meter -id 3 -plotindex 0 1.47E+02 8.31E+03
mv_meter -id 3 -plotindex 0 1.47E+02 9.29E+03
mv_meter -id 3 -plotindex 0 1.47E+02 9.78E+03
mv_meter -id 3 -plotindex 0 1.47E+02 1.00E+04
mv_meter -id 3 -plotindex 0 1.47E+02 1.03E+04
mv_meter -id 3 -plotindex 0 1.47E+02 1.05E+04
mv_meter -id 3 -plotindex 0 1.47E+02 1.10E+04
mv_meter -id 3 -plotindex 0 1.47E+02 1.12E+04
mv_meter -id 3 -plotindex 0 1.47E+02 1.15E+04
mv_meter -id 3 -plotindex 0 1.50E+02 1.17E+04
mv_meter -id 3 -plotindex 0 1.62E+02 1.27E+04
mv_meter -id 3 -plotindex 0 1.66E+02 1.32E+04
mv_meter -id 3 -plotindex 0 1.71E+02 1.37E+04
mv_meter -id 3 -plotindex 0 1.80E+02 1.42E+04
mv_meter -id 3 -plotindex 0 1.84E+02 1.44E+04
mv_meter -id 3 -plotindex 0 1.89E+02 1.49E+04
mv_meter -id 3 -plotindex 0 1.99E+02 1.59E+04
mv_meter -id 3 -plotindex 0 2.04E+02 1.64E+04
mv_meter -id 3 -plotindex 0 2.09E+02 1.66E+04
mv_meter -id 3 -plotindex 0 2.15E+02 1.69E+04
mv_meter -id 3 -plotindex 0 2.32E+02 1.74E+04
mv_meter -id 3 -plotindex 0 2.38E+02 1.76E+04
mv_meter -id 3 -plotindex 0 2.44E+02 1.78E+04
select_plot 1
move_cursor -id 0 nan 135
chaxis -plot 1 -axis 0 DB20
add_cursor -x
move_cursor -id 1 34463.6 342.683
move_cursor -id 1 36275.9 342.683
move_cursor -id 1 41234.7 342.683
move_cursor -id 1 49336 337.063
move_cursor -id 1 62133.1 337.063
move_cursor -id 1 84502.2 337.063
move_cursor -id 1 109183 337.063
move_cursor -id 1 168789 337.063
move_cursor -id 1 241628 337.063
move_cursor -id 1 337149 337.063
move_cursor -id 1 413859 337.063
move_cursor -id 1 562856 337.063
move_cursor -id 1 639796 331.444
move_cursor -id 1 765496 331.444
move_cursor -id 1 870135 331.444
move_cursor -id 1 989078 325.824
move_cursor -id 1 1.01475e+06 325.824
move_cursor -id 1 1.09584e+06 325.824
move_cursor -id 1 1.12428e+06 325.824
move_cursor -id 1 1.1834e+06 323.014
move_cursor -id 1 1.21412e+06 323.014
move_cursor -id 1 1.24563e+06 323.014
move_cursor -id 1 1.38008e+06 323.014
move_cursor -id 1 1.4159e+06 323.014
move_cursor -id 1 1.49036e+06 323.014
move_cursor -id 1 1.56873e+06 320.204
move_cursor -id 1 1.65122e+06 317.394
move_cursor -id 1 1.78317e+06 317.394
move_cursor -id 1 1.82945e+06 317.394
move_cursor -id 1 2.02692e+06 314.584
move_cursor -id 1 2.18888e+06 314.584
move_cursor -id 1 2.42514e+06 306.155
move_cursor -id 1 2.61893e+06 303.345
move_cursor -id 1 2.90161e+06 303.345
move_cursor -id 1 3.13347e+06 303.345
move_cursor -id 1 3.38386e+06 303.345
move_cursor -id 1 3.47169e+06 297.725
move_cursor -id 1 3.7491e+06 297.725
move_cursor -id 1 4.15377e+06 297.725
move_cursor -id 1 4.72156e+06 297.725
move_cursor -id 1 5.09885e+06 297.725
move_cursor -id 1 6.42142e+06 297.725
move_cursor -id 1 8.08705e+06 297.725
move_cursor -id 1 9.19251e+06 297.725
move_cursor -id 1 1.04491e+07 297.725
move_cursor -id 1 1.15769e+07 297.725
move_cursor -id 1 1.3501e+07 297.725
move_cursor -id 1 1.45798e+07 297.725
move_cursor -id 1 1.7003e+07 297.725
move_cursor -id 1 1.83616e+07 294.915
move_cursor -id 1 1.88382e+07 294.915
move_cursor -id 1 2.03435e+07 294.915
move_cursor -id 1 2.08716e+07 294.915
move_cursor -id 1 2.19691e+07 294.915
move_cursor -id 1 2.31244e+07 294.915
move_cursor -id 1 2.43404e+07 292.105
move_cursor -id 1 2.49722e+07 289.295
move_cursor -id 1 2.56203e+07 289.295
move_cursor -id 1 2.62854e+07 289.295
move_cursor -id 1 2.69676e+07 289.295
move_cursor -id 1 2.83857e+07 289.295
move_cursor -id 1 2.91225e+07 289.295
move_cursor -id 1 2.98784e+07 289.295
move_cursor -id 1 3.0654e+07 289.295
move_cursor -id 1 3.0654e+07 286.486
move_cursor -id 1 3.31034e+07 286.486
move_cursor -id 1 3.39627e+07 286.486
move_cursor -id 1 3.48442e+07 286.486
move_cursor -id 1 3.48442e+07 283.676
move_cursor -id 1 3.57486e+07 283.676
move_cursor -id 1 3.66765e+07 280.866
move_cursor -id 1 3.76285e+07 280.866
move_cursor -id 1 3.86052e+07 280.866
move_cursor -id 1 3.96072e+07 278.056
move_cursor -id 1 4.06353e+07 278.056
move_cursor -id 1 4.169e+07 278.056
move_cursor -id 1 4.38823e+07 278.056
move_cursor -id 1 4.38823e+07 275.246
move_cursor -id 1 4.61899e+07 269.626
move_cursor -id 1 4.73888e+07 269.626
move_cursor -id 1 4.86188e+07 269.626
move_cursor -id 1 4.86188e+07 266.816
move_cursor -id 1 4.73888e+07 266.816
move_cursor -id 1 4.61899e+07 266.816
move_cursor -id 1 4.27721e+07 266.816
move_cursor -id 1 4.169e+07 266.816
move_cursor -id 1 4.38823e+07 266.816
move_cursor -id 1 4.61899e+07 266.816
move_cursor -id 1 4.73888e+07 266.816
move_cursor -id 1 4.86188e+07 266.816
move_cursor -id 1 4.73888e+07 266.816
move_cursor -id 1 4.61899e+07 266.816
move_cursor -id 1 4.27721e+07 266.816
move_cursor -id 1 4.169e+07 266.816
move_cursor -id 1 4.06353e+07 266.816
move_cursor -id 1 4.27721e+07 266.816
move_cursor -id 1 4.38823e+07 275.246
move_cursor -id 1 4.73888e+07 275.246
move_cursor -id 1 4.86188e+07 275.246
move_cursor -id 1 4.98808e+07 275.246
move_cursor -id 1 5.11755e+07 275.246
move_cursor -id 1 5.25038e+07 275.246
move_cursor -id 1 5.38666e+07 278.056
move_cursor -id 1 5.52648e+07 278.056
move_cursor -id 1 5.38666e+07 280.866
move_cursor -id 1 5.25038e+07 280.866
move_cursor -id 1 5.11755e+07 280.866
move_cursor -id 1 4.98808e+07 280.866
move_cursor -id 1 4.86188e+07 280.866
zoom_in 1 1.53465e+07 2.9988e+08 -179.955 176.9
move_cursor -id 1 4.79325e+07 -154.666
move_cursor -id 1 4.81595e+07 -154.666
move_cursor -id 1 4.83876e+07 -154.666
move_cursor -id 1 4.83876e+07 -157.476
move_cursor -id 1 4.86168e+07 -157.476
move_cursor -id 1 4.90785e+07 -157.476
move_cursor -id 1 4.9311e+07 -160.286
move_cursor -id 1 4.97793e+07 -160.286
move_cursor -id 1 5.00151e+07 -163.096
move_cursor -id 1 5.0252e+07 -163.096
move_cursor -id 1 5.00151e+07 -163.096
move_cursor -id 1 4.97793e+07 -163.096
move_cursor -id 1 4.9311e+07 -163.096
move_cursor -id 1 4.90785e+07 -163.096
move_cursor -id 1 4.86168e+07 -163.096
move_cursor -id 1 4.83876e+07 -163.096
move_cursor -id 1 4.81595e+07 -163.096
move_cursor -id 1 4.79325e+07 -163.096
move_cursor -id 1 4.79325e+07 -160.286
move_cursor -id 1 4.77065e+07 -157.476
move_cursor -id 1 4.74816e+07 -154.666
move_cursor -id 1 4.72577e+07 -154.666
move_cursor -id 1 4.72577e+07 -151.856
move_cursor -id 1 4.70349e+07 -151.856
move_cursor -id 1 4.68131e+07 -151.856
move_cursor -id 1 4.68131e+07 -146.236
move_cursor -id 1 4.65924e+07 -143.426
move_cursor -id 1 4.61541e+07 -143.426
move_cursor -id 1 4.59365e+07 -143.426
move_cursor -id 1 4.59365e+07 -140.616
move_cursor -id 1 4.55044e+07 -140.616
move_cursor -id 1 4.52899e+07 -140.616
move_cursor -id 1 4.572e+07 -140.616
move_cursor -id 1 4.59365e+07 -140.616
