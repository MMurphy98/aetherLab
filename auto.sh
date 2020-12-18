#!/bin/bash
  
#### PATH DEDINITION ####
pwd="/home/murphy/aetherlab/"
LIBNAME="Three_Order_OTA"
CELLNAME="NMC_100MHz_TB"
CELLVIEWNAME="config_STB"
IWAVE_FILE=${pwd}"iwave.log"
NETLIST_FILE="${pwd}${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}.netlist"
NETLIST_MAPPING_FILE="${pwd}${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}.netlist.map"
SP_FILE="${pwd}${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}.sp"
SPLOG_FILE="${pwd}${LIBNAME}_${CELLNAME}_${CELLVIEWNAME}.sp.log"
TCL_FILE="${pwd}tclfile"
config_FILE="/home/murphy/aetherlab/mmsim_tmp.ini"
output_FILE="/home/murphy/aetherlab/mmsim.ini"
NAME_LIST=${pwd}"Namelist.txt"



#### PARAMETERS DEFINITION ####
NOISE_TAG="integral value of noise from 1.0000hz to 10.0000ghz"
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
    cat ${config_FILE} > ${output_FILE}
    echo "Three_Order_OTA\\NMC_100MHz=\"${1};;\"" >> ${output_FILE}

    ## [TODO] 

    cat ${output_FILE}
}



while read name 
    do

    USR=${name}

    #### update config
    updateconfig ${USR}

    let i++
    echo "${i}: ${USR}" >> result.txt

    #### generate netlist [TODO]
    oa2netlist ${LIBNAME} ${CELLNAME} ${CELLVIEWNAME} -t mhspice -o ${NETLIST_FILE} \
        -mf ${NETLIST_MAPPING_FILE} -hier -disp -name keep -max 80 \
        -ntlviewlist hspiceText hspiceD spice schematic veriloga -ntlstoplist hspiceText hspiceD spice \
        -glo -as0 -ael -suf -noexclam -pow "VDD! VCC! VEE! vdd! vcc!" -gnd "GND! GROUND! gnd! vss!" -end \
        -cir : -quo single -del '<' -exprquo quotation -gsub -printMFactor -mdeparam "R vbn2 vbp2 Ib Cc" 

    #### run simulation
    alps -mde  ${SP_FILE}

    #### run calculator in iwave
    iwave -tcl ${TCL_FILE}

    #### GBW PM DC_GAIN ####
    while read line
    do
        if [[ ${line:0:4} == "calc" ]]
        then
            line_pro=${line#* }
            case ${line_pro%%(*} in
                "max")
                    if [[ ${line_pro:5:2} == "db" ]]
                    then
                        DC_GAIN_DB=${line##*:}
                        echo "DC_GAIN_DB: ${DC_GAIN_DB} dB" >> result.txt
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
                        echo "DC_GAIN: ${DC_GAIN} " >> result.txt
                        
                    fi
                    ;;
                "gain1_f")
                    GBW=${line##*:}
                    echo "GBW: ${GBW} Hz" >> result.txt
                    ;;                
                "phase_m")
                    PM=${line##*:}
                    echo "PHASE_MARGIN: ${PM} deg" >> result.txt
                    ;;
            esac
        fi
    done < ${IWAVE_FILE}

    #### Power Noise ####

    while read line
    do

        if [[ ${Power_SEARCH_TAG} -eq 1 ]]
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

    let Power_SEARCH_TAG=0
    let NOISE_SEARCH_TAG=0
    echo Vdc=1.8V Idc=${Idc}mA Power=${Power}mW >> result.txt
    echo NOISE: ${NOISE_INPUT}n Vrms >> result.txt

    #### Area ####

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
    done < ${NETLIST_FILE}

    echo AREA_TOTAL: ${AREA_TOTAL} um2 >> result.txt


done < ${NAME_LIST}

echo "ALL DONE"
