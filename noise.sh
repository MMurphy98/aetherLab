#!/bin/bash

filename_LOG='/home/murphy/aetherlab/Three_Order.sp.log'
NOISE_TAG="integral value of noise from 1.0000hz to 10.0000ghz"
NOISE_SEARCH_TAG=0
NOISE_VOLTAGE_NOISE=0
i=0
while read line
do
    if [[ ${NOISE_SEARCH_TAG} -gt 1 ]]
    then 
        echo "NOISE_BREAK"
        break
    else
        if [[ ${NOISE_SEARCH_TAG} -eq 1 ]]
        then 
            if [[ ${line#*output} != ${line} ]]
            then   
                NOISE=${line#* = };NOISE=${NOISE%% *}
                echo NOISE:${NOISE}
                let NOISE_SEARCH_TAG++
            fi
        else
            if [[ ${line#* } == ${NOISE_TAG} ]]
            then
                echo "Find NOISE"
                let NOISE_SEARCH_TAG++
            fi
        fi
    fi
done < $filename_LOG

