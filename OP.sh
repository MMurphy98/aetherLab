#!/bin/bash
filename_OP="/home/key/aetherlab/homework1_test1_schematic_ALPS/homework1_test1_schematic_Nominal.sp.sim/homework1_test1_schematic_Nominal.sp.op"

Cgs=0
gds=0
gm=0
Id=0
Vgs=0
while read line
do 
    
    if [[ ${line:0:2} == "id" ]]
    then 
        echo "find id"
        Id=${line%z*}; Id=${Id##* }
    fi

    if [[ ${line:0:3} == "vgs" ]]
    then 
        echo "find Vgs"
        Vgs=${line%z*}; Vgs=${Vgs##* }
    fi

    if [[ ${line:0:2} == "gm" && {line:0:3 != "gmb"} ]]
    then 
        echo "find gm"
        gm=${line%z*}; gm=${gm##* }
    fi

    if [[ ${line:0:3} == "gds" ]]
    then 
        echo "find gds"
        gds=${line%z*}; gds=${gds##* }
    fi

    if [[ ${line:0:3} == "cgs" ]]
    then 
        echo "find Cgs"
        Cgs=${line%z*}; Cgs=${Cgs##* }
    fi

done < ${filename_OP}

echo Id=${Id}, Vgs=${Vgs}, gm=${gm}, gds=${gds}, Cgs=${Cgs}
