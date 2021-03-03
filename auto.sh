#!/bin/bash
  
#### PATH DEDINITION ####
pwd="/home/postgrad20/zhangxiuli/simulation/zhangxiuli"
LIBNAME="huike_7"
CELLNAME="gmoid_p"
CELLVIEWNAME="schematic"

# IWAVE_FILE="${pwd}/iwave.log"
# TCL_FILE="${pwd}/iwave_tcl.tcl"

DIR_RESULT="${pwd}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_ALPS"
NETLIST_FILE="${DIR_RESULT}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}.netlist"
NETLIST_MAPPING_FILE="${DIR_RESULT}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}.netlist.map"
SP_FILE="${DIR_RESULT}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_Nominal.sp"
# SPLOG_FILE="${DIR_RESULT}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_Nominal.sp.log"

SP_FILE_temp_head="${DIR_RESULT}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_Nominal_temp_head.sp"
SP_FILE_temp_tail="${DIR_RESULT}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_Nominal_temp_tail.sp"

OP_FILE="/home/postgrad20/zhangxiuli/Desktop/huike/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_Nominal.sp.sim/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_Nominal.sp.op"
VGS_list="${DIR_RESULT}/VGS.txt"

RESULT_FILE="${DIR_RESULT}/result.csv"


#### PARAMETERS DEFINITION ####

Cgs=0
gds=0
Id=0
gm=0

#### Function Definition ####
function updatespice {
    echo ${1}
    cat ${SP_FILE_temp_head} > ${SP_FILE}
    # echo "${LIBNAME}\\Miller-OTA=\"schematic_${1};;\"" >> ${config_FILE} # change the config
    echo ".param vin='${1}'" >> ${SP_FILE}
    cat ${SP_FILE_temp_tail} >> ${SP_FILE}

    # cat ${output_FILE}
}


# echo "Name, DC_GAIN(dB), GBW(MHz), Phase_Margin(deg), Power(uW), Noise(nVrms), Area(um2)" >> ${RESULT_FILE}
echo "Vgs, gm, Cgs, gds, Id" > ${RESULT_FILE}

while read data 
    do

    Vgs=${data}

    #### update spice file
    updatespice ${Vgs}

    let i++

    #### generate netlist 
    oa2netlist ${LIBNAME} ${CELLNAME} ${CELLVIEWNAME} -t mhspice -o ${NETLIST_FILE} \
        -mf ${NETLIST_MAPPING_FILE} -hier -disp -name keep -max 80 \
        -ntlviewlist hspiceText hspiceD spice schematic veriloga -ntlstoplist hspiceText hspiceD spice \
        -glo -as0 -ael -suf -noexclam -pow "VDD! VCC! VEE! vdd! vcc!" -gnd "GND! GROUND! gnd! vss!" -end \
        -cir : -quo single -del '<' -exprquo quotation -gsub -printMFactor -mdeparam "vin" 


    #### run simulation with ALPS
    alps -mde  ${SP_FILE}

    #### Operation Point ####
    while read line 
	# Open xxxx.sp.op to check operation point

    do
        if [[ ${line:0:2} == "id" ]]
        then 
            echo "find id"
            Id=${line%z*}; Id=${Id##* }
        fi


        if [[ ${line:0:2} == "gm" && ${line:0:3} != "gmb" ]]
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

    done < ${OP_FILE}

    
    echo "${Vgs}, ${gm}, ${Cgs}, ${gds}, ${Id}" >> ${RESULT_FILE}

	# refresh the result
    let Cgs=0
    let gds=0
    let Id=0
    let gm=0

    
done < ${VGS_list}

echo "ALL DONE"
