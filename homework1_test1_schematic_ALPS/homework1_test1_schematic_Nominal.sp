* Description: simulation for homework1/test1/schematic
.option search="/home/teacher/yuanqi/Aether/Demo"
.inc "/home/teacher/yuanqi/simulation/yuanqi/homework1_test1_schematic_ALPS/homework1_test1_schematic.netlist"
.lib "/opt/PDK/DEMO/models/model.lib" TT
.param vin='0.65'
.temp 27
.option reltol=0.001
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
.op 

.ac dec 10 1 1G 

.noise v(vout) vv0 10
.end
