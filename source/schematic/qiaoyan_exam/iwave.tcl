exit
_probe -file /tmp/plotcKa1lB
open_file /home/undergrad19_exam/qiaoyan_exam/simulation/qiaoyan_exam/competition_testbench_schematic_ALPS/competition_testbench_schematic_Nominal.sp.sim/competition_testbench_schematic_Nominal.sp.ac0
calc &f<0>::s<v(vout)>@0#&/&f<0>::s<v(vinn)>@0#&
add_panel -1
open_wave -group Doc_Not_Found,0,_calc_wfs_\(0\)
chaxis Log10
chaxis -plot 1 -axis 0 Linear
chaxis -plot 1 -axis 0 DB20
select_plot 0
add_meter -DataXY
set_meter -id 0 ValueType=0++RangeTarget=0++UserMax=0++UserMin=0++LockedLevel=0
mv_mark -id 2 -plotindex 0 8.266641E+03 8.304152E+03
mv_mark -id 2 -plotindex 0 5.989968E+03 8.304152E+03
mv_mark -id 2 -plotindex 0 4.602111E+03 8.304152E+03
mv_mark -id 2 -plotindex 0 3.054194E+03 8.304152E+03
mv_mark -id 2 -plotindex 0 2.149183E+03 9.381831E+03
mv_mark -id 2 -plotindex 0 1.468695E+03 1.126616E+04
mv_mark -id 2 -plotindex 0 1.033495E+03 1.352897E+04
mv_mark -id 2 -plotindex 0 8.669555E+02 1.352897E+04
mv_mark -id 2 -plotindex 0 7.272525E+02 1.438006E+04
mv_mark -id 2 -plotindex 0 7.062633E+02 1.438006E+04
mv_mark -id 2 -plotindex 0 6.100615E+02 1.624625E+04
mv_mark -id 2 -plotindex 0 5.924545E+02 1.624625E+04
mv_mark -id 2 -plotindex 0 5.426243E+02 1.835462E+04
mv_mark -id 2 -plotindex 0 5.117549E+02 1.835462E+04
mv_mark -id 2 -plotindex 0 4.420476E+02 1.950929E+04
mv_mark -id 2 -plotindex 0 3.708151E+02 1.950929E+04
mv_mark -id 2 -plotindex 0 3.203055E+02 2.204113E+04
mv_mark -id 2 -plotindex 0 2.389893E+02 2.646808E+04
mv_mark -id 2 -plotindex 0 1.836162E+02 2.646808E+04
mv_mark -id 2 -plotindex 0 1.292075E+02 3.178417E+04
mv_mark -id 2 -plotindex 0 9.640549E+01 3.590899E+04
mv_mark -id 2 -plotindex 0 7.406863E+01 3.590899E+04
mv_mark -id 2 -plotindex 0 5.526477E+01 4.056911E+04
mv_mark -id 2 -plotindex 0 5.061655E+01 4.312128E+04
mv_mark -id 2 -plotindex 0 4.246009E+01 4.871739E+04
mv_mark -id 2 -plotindex 0 4.123465E+01 5.178216E+04
move_cursor -id 0 nan 1
move_cursor -id 1 5.4e+07 nan
exit
