#!/bin/bash
  
#### PATH DEDINITION ####
pwd="/home/postgrad21/majinge/Aether/Aether_exam"
LIBNAME="final"
CELLNAME="Exam_1"
CELLVIEWNAME="config"

IWAVE_FILE="${pwd}/iwave.log"
TCL_FILE="${pwd}/iwave_tcl.tcl"

DIR_RESULT="${pwd}/Simulation/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_ALPS"
NETLIST_FILE="${DIR_RESULT}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}.netlist"
NETLIST_MAPPING_FILE="${DIR_RESULT}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}.netlist.map"
SP_FILE="${pwd}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_Nominal.sp"
SPLOG_FILE="${pwd}/${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}_Nominal.sp.log"

config_temp_FILE="${pwd}/${LIBNAME}/${CELLNAME}/${CELLVIEWNAME}/mmsim_tmp.ini"
config_FILE="${pwd}/${LIBNAME}/${CELLNAME}/${CELLVIEWNAME}/mmsim.ini"
NAME_LIST="${pwd}/Namelist.txt"

RESULT_FILE="${pwd}/result.csv"


#### PARAMETERS DEFINITION ####
NOISE_TAG="integral value of noise from 1.0000hz to 1.0000ghz"
NOISE_SEARCH_TAG=0
NOISE_VOLTAGE_NOISE=0

Power_SEARCH_FLAG=0

NMOS_FLAG="MNM"
PMOS_FLAG="MPM"
MUL_FLAG=0
SUBCKT_SEARCH=0
AREA_TOTAL=0

DC_GAIN_DB=0
DC_GAIN=0
GWB=0
PM=0
NOISE_INPUT=0
Power=0

i=0


#### Function Definition ####
function updateconfig {
    echo ${1}
    cat ${config_temp_FILE} > ${config_FILE}
    echo "${LIBNAME}\\Miller-OTA=\"schematic_${1};;\"" >> ${config_FILE} # change the config
	
    # cat ${output_FILE}
}


echo "Name, DC_GAIN(dB), GBW(MHz), Phase_Margin(deg), Power(uW), Noise(nVrms), Area(um2)" >> ${RESULT_FILE}

while read name 
    do

    USR=${name}

    #### update config
    updateconfig ${USR}

    let i++

    #### generate netlist 
    oa2netlist ${LIBNAME} ${CELLNAME} ${CELLVIEWNAME} -t mhspice -o ${NETLIST_FILE} \
        -mf ${NETLIST_MAPPING_FILE} -hier -disp -name keep -max 80 \
        -ntlviewlist hspiceText hspiceD spice schematic veriloga -ntlstoplist hspiceText hspiceD spice \
        -glo -as0 -ael -suf -noexclam -pow "VDD! VCC! VEE! vdd! vcc!" -gnd "GND! GROUND! gnd! vss!" -end \
        -cir : -quo single -del '<' -exprquo quotation -gsub -printMFactor -mdeparam "R vbn2 vbp2 Ib Cc" 


    #### run simulation with ALPS
    alps -mde  ${SP_FILE}

    #### run calculator in iwave
    iwave -tcl ${TCL_FILE}

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
                        # echo "DC_GAIN_DB: ${DC_GAIN_DB} dB" >> result.txt
                    else
                        DC_GAIN=${line##*:}
                        case ${DC_GAIN: -1} in
                            "M")
                                DC_GAIN=`echo "scale=4;${DC_GAIN%*M}*1000000" |bc`
                                ;;
                            "k")
                                DC_GAIN=`echo "scale=4;${DC_GAIN%*k}*1000" |bc`
                                ;;
                        esac
                        # echo "DC_GAIN: ${DC_GAIN} " >> result.txt
                        
                    fi
                    ;;
                "gain1_f")
                    GBW=${line##*:}

                    # echo "GBW: ${GBW} Hz" >> result.txt
                    ;;                
                "phase_m")
                    PM=${line##*:}
                    # echo "PHASE_MARGIN: ${PM} deg" >> result.txt
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
            #echo "Power_Flag==1"

            if [[ ${line:0:1} == "i" ]]
            then
                echo "find idc"
                Idc=${line%u*}; Idc=${Idc##* }
            fi

            if [[ ${line:0:3} == "pwr" ]]
            then
                echo "find pwr"
                Power=${line%u*}; Power=${Power##* }
                let Power_SEARCH_TAG++
            fi
        else
            #echo ${Power_FLAG} ${line#* *}
            if [[ ${line#* *} == "vsourceDc:" ]]
            then
                echo "find VsourceDC"
                let Power_SEARCH_TAG=1
            fi
        fi

        if [[ ${NOISE_SEARCH_TAG} -eq 1 ]]
        then 
            if [[ ${line#*output} != ${line} ]]
            then   
                NOISE_OUTPUT=${line#* = };NOISE_OUTPUT=${NOISE_OUTPUT%% *}
                case ${NOISE_OUTPUT: -1} in
                    "m")
                        NOISE_OUTPUT=`echo "scale=4;${NOISE_OUTPUT%*m}*1000000" |bc`
                        ;;
                    "u")
                        NOISE_OUTPUT=`echo "scale=4;${NOISE_OUTPUT%*u}*1000" |bc`
                        ;;
                    "n")
                        NOISE_OUTPUT=${NOISE_OUTPUT%*n}
                        ;;
                    *)
                        NOISE_OUTPUT=`echo "scale=4;${NOISE_OUTPUT}*1000000000" |bc`
                        ;;
                esac
                NOISE_INPUT=`echo "scale=9;${NOISE_OUTPUT}/${DC_GAIN}" |bc`
		echo "OUTPUT_NOISE: ${NOISE_OUTPUT} INPUT_NOISE: ${NOISE_INPUT} DC_GAIN: ${DC_GAIN}"
                let NOISE_SEARCH_TAG++
            fi
        else
            if [[ ${line#* } == ${NOISE_TAG} ]]
            then
                echo "Find NOISE"
                let NOISE_SEARCH_TAG++
            fi
        fi

    done < ${SPLOG_FILE}

    let NOISE_SEARCH_TAG=0
    let Power_SEARCH_TAG=0
    # echo Vdc=1.8V Idc=${Idc}mA Power=${Power}uW >> result.txt
    # echo NOISE: ${NOISE_INPUT}n Vrms >> result.txt

    #### Area ####

    while read line
	# Open the .netlist to get the parameters of the MOSFET
    do
        if [[ $MUL_FLAG -ne 0 ]]
        then 
            MUL_NUM=${line#*M=}
            AREA_MOS=`echo "scale=4;${AREA_Single}*${MUL_NUM}" |bc`
            MUL_FLAG=0
            # echo MUL_HEAD:$MUL_FLAG
            # echo $i : L=${LENGTH_NUM} W=${WIDTH_NUM} M=${MUL_NUM} AREA=${AREA_MOS}
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
                # let "i++"
                AREA_Single=`echo "scale=4;${WIDTH_NUM}*${LENGTH_NUM}" |bc`
                
                #GET Multiplier
                if [[ ${line#* M=} != ${line} ]]
                then 
                    MUL_NUM=${line#* M=}
                    AREA_MOS=`echo "scale=4;${AREA_Single}*${MUL_NUM}" |bc`
                    MUL_FLAG=0
                    # echo $MUL_FLAG
                    # echo $i : L=${LENGTH_NUM} W=${WIDTH_NUM} M=${MUL_NUM} AREA=${AREA_MOS}
                    AREA_TOTAL=`echo "scale=4;${AREA_TOTAL}+${AREA_MOS}" |bc`
                else
                    #echo MUL:$MUL_FLAG
                    let "MUL_FLAG++"    
                fi
            fi
        fi
    done < ${NETLIST_FILE}
    
    # echo AREA_TOTAL: ${AREA_TOTAL} um2 >> result.txt
    # echo "*****************************" >> result.txt

	GBW_NUM=${GBW%*M}
    echo "${USR}, ${DC_GAIN_DB}, ${GBW_NUM}, ${PM}, ${Power}, ${NOISE_INPUT}, ${AREA_TOTAL}" >> result.csv

	# refresh the result
    let NOISE_INPUT=0
    let NOISE_OUTPUT=0
    let Power=0
    let Idc=0
    let AREA_TOTAL=0
    let AREA_MOS=0
	let GBW=0
	let DC_GAIN_DB=0
	let DC_GAIN=0
	let PM=0
    
done < ${NAME_LIST}

echo "ALL DONE"
