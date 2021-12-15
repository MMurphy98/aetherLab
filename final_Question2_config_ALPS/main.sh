#!/bin/bash
echo "hello world"

#### PATH DEDINITION ####
LIBNAME="final"
CELLNAME="Question2"
CELLVIEWNAME="config"

IWAVE_FILE="iwave.log"


SPLOG_FILE="${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_Nominal.sp.log"

RESULT_FILE="result.csv"
NETLIST_FILE="final_Question2_config.netlist"


#### PARAMETERS DEFINITION ####
NOISE_TAG="integral value of noise from 1.0000hz to 1.0000e+10hz"
NOISE_SEARCH_TAG=0
NOISE_VOLTAGE_NOISE=0
NMOS_FLAG="MNM"
PMOS_FLAG="MPM"
NBULK_TAG=0
PBULK_TAG=0

Power_SEARCH_FLAG=0


DC_GAIN_DB=0
DC_GAIN=0
GWB=0
PM=0
NOISE_OUTPUT=0
Power=0

i=0

# echo "Name, DC_GAIN(dB), GBW(Hz), Phase_Margin(deg), Power(W), Noise(Vrms)" >> ${RESULT_FILE}

#### GBW PM DC_GAIN ####
    while read line 
	# Open iwave.log to get the result of calculations

    do
        if [[ ${line:0:4} == "calc" ]]
        then
            line_pro=${line#* }
            case ${line_pro%%(*} in
                "max")
                    if [[ ${line_pro:4:2} == "db" ]]
                    then
                        DC_GAIN_DB=${line##*:}
                        echo "DC_GAIN_DB: ${DC_GAIN_DB} dB" 
                    else
                        GBW=${line##*:}
                        echo "GBW: ${GBW} Hz" 
                    fi
                    ;;        
                "phase_m")
                    PM=${line##*:}
                    echo "PHASE_MARGIN: ${PM} deg" 
                    ;;
            esac
        fi
    done < ${IWAVE_FILE}

#### Power Noise ####

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
                pwr=${pwr#* }
                echo ${pwr}

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


        if [[ ${NOISE_SEARCH_TAG} -eq 1 ]]
        then 
            if [[ ${line#*output} != ${line} ]]
            then   
                NOISE_OUTPUT=${line#* = };NOISE_OUTPUT=${NOISE_OUTPUT%% *}
                echo ${NOISE_OUTPUT}
                let NOISE_SEARCH_TAG++
            fi
        else
            if [[ ${line#* } == ${NOISE_TAG} ]]
            then
                # echo "Find NOISE"
                let NOISE_SEARCH_TAG++
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

    # let NOISE_SEARCH_TAG=0
    # let Power_SEARCH_TAG=0
    #  echo Vdc=1.8V Idc=${Idc}mA Power=${Power}uW >> result.txt
    #  echo NOISE: ${NOISE_INPUT}n Vrms >> result.txt
