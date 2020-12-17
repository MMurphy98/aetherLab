#!/bin/bash
filename_OP="/home/murphy/aetherlab/Three_Order_OTA_NMC_100MHz_TB_config_STB_Nominal.sp.sim/Three_Order_OTA_NMC_100MHz_TB_config_STB_Nominal.sp.op"

Idc=0
Power=0
Power_FLAG=0
while read line
do
    if [[ Power_FLAG -gt 1 ]]
    then 
        echo "break"
        break
    else
        if [[ ${Power_FLAG} -eq 1 ]]
        then 
            #echo "Power_Flag==1"

            if [[ ${line:0:1} == "i" ]]
            then
                echo "find idc"
                Idc=${line%m*}; Idc=${Idc##* }
            fi

            if [[ ${line:0:3} == "pwr" ]]
            then
                echo "find pwr"
                Power=${line%m*}; Power=${Power##* }
                let Power_FLAG++
            fi
        else
            #echo ${Power_FLAG} ${line#* *}
            if [[ ${line#* *} == "vsourceDc:" ]]
            then
                echo "find VsourceDC"
                let Power_FLAG=1
            fi
        fi
    fi
done < $filename_OP
let Power_FlAG=0

echo Vdc=1.8V Idc=${Idc}mA Power=${Power}mW
