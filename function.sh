#!/bin/bash

line="MPM9 Vbp1 Vbp2 net3 net3 p18 L=200n W=20u AD=5.4p AS=6.24p PD=20.54u PS=24.624u "

function getNum {
    line=$1
    date=$2
    echo $line
    TMP=${line#* ${date}=}
    TMP=${TMP%% *}
    NUM=0
    case ${TMP: -1} in
        "n")
            NUM=${TMP%*n}
            NUM=`echo "scale=4;$NUM}/1000" |bc`
            echo ${NUM}
            ;;
        "u")
            NUM=${TMP%*u}
            echo ${NUM}   
            ;;
        esac
    echo ${NUM}   

    return NUM     
}
getNum ${line} $L

echo $?

