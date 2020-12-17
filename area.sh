#!/bin/bash

filename_NETLIST="/home/murphy/aetherlab/Three_Order_OTA_NMC_100MHz_TB_config_STB.netlist"
NMOS_FLAG="MNM"
PMOS_FLAG="MPM"
MUL_FLAG=0
SUBCKT_SEARCH=0
AREA_TOTAL=0
i=0

while read line
do
    if [[ $MUL_FLAG -ne 0 ]]
    then 
        MUL_NUM=${line#*M=}
        AREA_MOS=`echo "scale=4;${AREA_Single}*${MUL_NUM}" |bc`
        MUL_FLAG=0
        #echo MUL_HEAD:$MUL_FLAG
        echo $i : L=${LENGTH_NUM} W=${WIDTH_NUM} M=${MUL_NUM} AREA=${AREA_MOS}
        AREA_TOTAL=`echo "scale=4;${AREA_TOTAL}+${AREA_MOS}" |bc`
    else
        if [[ ${line:0:3} == ${PMOS_FLAG} || ${line:0:3} == ${NMOS_FLAG} ]]
        then
            # GET LENGTH
            Length_TMP=${line#* L=};Length_TMP=${Length_TMP%% *}
            #echo ${Length_TMP}
            case ${Length_TMP: -1} in
                "n")
                    LENGTH_NUM=${Length_TMP%*n}
                    LENGTH_NUM=`echo "scale=4;${LENGTH_NUM}/1000" |bc`
                    #echo ${LENGTH_NUM}
                    ;;
                "u")
                    LENGTH_NUM=${Length_TMP%*u}
                    #echo ${LENGTH_NUM}   
                    ;;
                esac
            
            # GET WIDTH
            WIDTH_TMP=${line#* W=};WIDTH_TMP=${WIDTH_TMP%% *}
            case ${WIDTH_TMP: -1} in
                "n")
                    WIDTH_NUM=${WIDTH_TMP%*n}
                    WIDTH_NUM=`echo "scale=4;${WIDTH_NUM}/1000" |bc`
                    #echo ${WIDTH_NUM}
                    ;;
                "u")
                    WIDTH_NUM=${WIDTH_TMP%*u}
                    #echo ${WIDTH_NUM}   
                    ;;
                esac
            let "i++"
            AREA_Single=`echo "scale=4;${WIDTH_NUM}*${LENGTH_NUM}" |bc`
            
            #GET Multiplier
            if [[ ${line#* M=} != ${line} ]]
            then 
                MUL_NUM=${line#* M=}
                AREA_MOS=`echo "scale=4;${AREA_Single}*${MUL_NUM}" |bc`
                MUL_FLAG=0
                #echo $MUL_FLAG
                echo $i : L=${LENGTH_NUM} W=${WIDTH_NUM} M=${MUL_NUM} AREA=${AREA_MOS}
                AREA_TOTAL=`echo "scale=4;${AREA_TOTAL}+${AREA_MOS}" |bc`
            else
                #echo MUL:$MUL_FLAG
                let "MUL_FLAG++"    
            fi
        fi
    fi
done < $filename_NETLIST

echo AREA_TOTAL:${AREA_TOTAL}