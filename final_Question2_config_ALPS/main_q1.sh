#!/bin/bash
echo "hello world"

#### PATH DEDINITION ####
LIBNAME="final"
CELLNAME="Question1"
CELLVIEWNAME="config"

pwd="/home/undergrad18/wangyining/Desktop/Test"

IWAVE_FILE="iwave.log"
TCL_FILE="calculated.tcl"

DIR_RESULT="${pwd}/${LIBNAME}/Simulation/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_ALPS"
NETLIST_FILE="${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}.netlist"
NETLIST_MAPPING_FILE="${DIR_RESULT}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}.netlist.map"
SPLOG_FILE="${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_Nominal.sp.log"

config_temp_FILE="${pwd}/${LIBNAME}/${CELLNAME}/${CELLVIEWNAME}/mmsim_temp.ini"
config_FILE="${pwd}/${LIBNAME}/${CELLNAME}/${CELLVIEWNAME}/mmsim.ini"
NAME_LIST="${pwd}/Namelist.txt"

RESULT_FILE="result_Question2.csv"



#### PARAMETERS DEFINITION ####
NMOS_FLAG="MNM"
PMOS_FLAG="MPM"

Power_SEARCH_TAG=0

Iout=0
Rout=0
R_ERROR=0

NUM_VSource=0
NBULK_TAG=0
PBULK_TAG=0

NUM_S=0
NUM_L=0
NUM_C=0

i=0

#### Function Definition ####
function updateconfig {
    echo ${1}
    cat ${config_temp_FILE} > ${config_FILE}
    echo "${LIBNAME}\\Answer2=\"schematic_${1};;\"" >> ${config_FILE} # change the config
	
    # cat ${output_FILE}
}


echo "Index, Current Output, Output Impendence, Vsource, Saturation, Linear, Cutoff, Nbulk_error, Pbulk_error, R_ERROR" >> ${RESULT_FILE}

	#### Output Impendence ####
    while read line 
	# Open iwave.log to get the result of calculations

    do
        if [[ ${line:0:4} == "calc" ]]
        then
            line_pro=${line#* }
            case ${line_pro%%(*} in
                "max")
                    Rout=${line##*:}
					echo "Output Impendence: ${Rout} ohm"
					;;
            esac
        fi
    done < ${IWAVE_FILE}

    while read line
	# open .sp.log to get the results of OP and Noise analysis
    do
       if [[ ${Power_SEARCH_TAG} -eq 1 ]]
        then 
            # echo "Power_Flag==1"

            if [[ ${line:0:3} == "pwr" ]]
            then
                # echo "find pwr"
                pwr=${line% 0.0*}
                POWER=${pwr#* }
                echo "Power: ${POWER} W"

                let Power_SEARCH_TAG++
            fi

        else
            # echo ${Power_FLAG} ${line#* *}
            if [[ ${line#* *} == "vsourceDc:" ]]
            then
                # echo "find VsourceDC"
                let Power_SEARCH_TAG=1
            fi
        fi        

    done < ${SPLOG_FILE}

	#### Check Bulk ####

    while read line
	# Open the .netlist to get the parameters of the MOSFET
    do
        if [[ ${line:0:3} == ${PMOS_FLAG} ]]
        then
            line=${line% p18*}
            PBULK=${line##* }
            line=${line% *}
            PSOURCE=${line##* }
            if [[ ${PBULK} != ${PSOURCE} ]]
            then
                let PBULK_TAG=1
            fi
        fi
        if [[ ${line:0:3} == ${NMOS_FLAG} ]]
        then
            line=${line% n18*}
            NBULK=${line##* }
            # echo ${NBULK}
            if [[ ${NBULK} != "gnda" ]]
            then 
                let NBULK_TAG=1
            fi 
        fi
 
    done < ${NETLIST_FILE}
    let BULK_ERROR=NBULK_TAG+PBULK_TAG
    if [[ ${BULK_ERROR} -eq 0 ]]
    then
        echo "Normal"
    else
        echo "ERROR: ${NBULK_TAG}, ${PBULK_TAG}"
    fi
	NUM_S=$(awk -v RS="@#$j" '{print gsub(/Saturati/,"$")}' ${SPLOG_FILE})
	NUM_L=$(awk -v RS="@#$j" '{print gsub(/Linear/,"$")}' ${SPLOG_FILE})
	NUM_C=$(awk -v RS="@#$j" '{print gsub(/Cutoff/,"$")}' ${SPLOG_FILE})
	NUM_VSource=$(awk -v RS="@#$j" '{print gsub(/VV/,"$")}' ${NETLIST_FILE})
	R_ERROR=$(awk -v RS="@#$j" '{print gsub(/RR/,"$")}' ${NETLIST_FILE})

	echo "${i}, ${Iout}, ${Rout}, ${NUM_VSource}, ${NUM_S}, ${NUM_L}, ${NUM_C}, ${NBULK_TAG}, ${PBULK_TAG}, ${R_ERROR}" >> ${RESULT_FILE}

	## reset
	let NUM_VSource=0
	let Iout=0
	let Rout=0
	let R_ERROR=0
	let NBULK_TAG=0
	let PBULK_TAG=0

	let Power_SEARCH_TAG=0

	let NUM_S=0
	let NUM_L=0
	let NUM_C=0
	
	echo "ALL DONE"

