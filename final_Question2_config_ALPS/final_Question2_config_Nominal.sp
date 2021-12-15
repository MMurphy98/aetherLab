* Description: simulation for final/Question2/schematic
.option search="/home/undergrad18/wangyining/Under19"
.inc "/home/undergrad18/wangyining/Under19/final/Simulation/final_Question2_config_ALPS/final_Question2_config.netlist"
.lib "/opt/EDA/empyrean_202005/labs/input_files/models/model.lib" TT
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
.option ingold=1
.op 

.ac dec 20 1000 1G 

.noise v(vout, 0) vv1 10
.probe AC v(vinn)
.probe AC v(vout)
.probe NOISE v(vinn)
.probe NOISE v(vout)
.end
