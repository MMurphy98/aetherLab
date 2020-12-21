* Description: simulation for Three_Order_OTA/NMC_100MHz_TB/schematic_STB
.option search="/home/postgrad21/majinge/Aether"
.inc "/home/postgrad21/majinge/Aether/lab8_result/Three_Order.netlist"
.lib "/opt/EDA/empyrean/labs/input_files/models/model.lib" TT
.param Ib='314u'
.param Cc1='2.5p'
.param Cc2='1p'
.param Vbn2='1.2'
.param dv='23.04076u'
.temp 27
.option reltol=1e-05
.option abstol=1e-09
.option absv=5e-06
.option gmin=1e-12
.option itl1=200
.option itl4=8
.option tnom=27
.option scale=1
.option scalm=1
.option post
.option probe
.option postlvl=0
.option posttop=0
.option ingold=0
.op 0

.ac dec 100 1 10G 

.noise v(vout) vv4 100
.probe AC v(vout)
.probe AC i(*)
.probe AC iall(*)
.probe AC isub(*)
.probe AC v(*)
.probe NOISE v(vout)
.probe NOISE i(*)
.probe NOISE iall(*)
.probe NOISE isub(*)
.probe NOISE v(*)
.end
