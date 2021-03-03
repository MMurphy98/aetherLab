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

OP_FILE = "${SP_FILE}.sim/${SP_FILE}.op"
VGS_list="${pwd}/VGS.txt"

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

Cgs = 0
gds = 0
Id = 0

#### Function Definition ####
function updatespice {
    echo ${1}
    cat ${SP_FILE_temp_head} > ${SP_FILE}
    # echo "${LIBNAME}\\Miller-OTA=\"schematic_${1};;\"" >> ${config_FILE} # change the config
    echo ".param vin=\'${1}\'" >> ${SP_FILE}
    cat ${SP_FILE_temp_tail} >> ${SP_FILE}

    # cat ${output_FILE}
}


# echo "Name, DC_GAIN(dB), GBW(MHz), Phase_Margin(deg), Power(uW), Noise(nVrms), Area(um2)" >> ${RESULT_FILE}
echo "Vgs, Cgs, gds, Id" >> ${RESULT_FILE}

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
    done < ${OP_FILE}

    
    echo "${Vgs}, ${Cgs}, ${gds}, ${Id}" >> ${RESULT_FILE}

	# refresh the result
    let Cgs = 0
    let gds = 0
    let Id = 0

    
done < ${VGS_list}

echo "ALL DONE"
