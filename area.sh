#!/bin/bash

filename_NETLIST="Three_OTA_NMC_100MHz_TB_config_STB.netlist"

i=0
while read line
do
    if [ ${line:0:4} == ${CAL_FLAG} ]
    then
        line_pro=${line#* }
        case ${line_pro%%(*} in
            "max")
                echo "DC_GAIN: ${line##*:} dB" >> result.txt
                let "i++"
                echo $i 
                ;;
            "gain1_f")
                echo "GBW: ${line##*:} Hz" >> result.txt
                let "i++"
                echo $i 
                ;;                
            "phase_m")
                echo "PHASE_MARGIN: ${line##*:} deg" >> result.txt
                let "i++"
                echo $i 
                ;;
        esac
    fi
done < $filename_IWAVE