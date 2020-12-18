#!/bin/bash

config_FILE="/home/murphy/aetherlab/mmsim_tmp.ini"
output_FILE="/home/murphy/aetherlab/mmsim.ini"

function update {
    echo ${1}
    cat ${config_FILE} > ${output_FILE}
    echo "Three_Order_OTA\\NMC_100MHz=\"${1};;\"" >> ${output_FILE}
    cat ${output_FILE}
}

update schematic