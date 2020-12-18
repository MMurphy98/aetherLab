#!/bin/bash

NAME_LIST="/home/murphy/aetherlab/Namelist.txt"

while read line
do
    echo ${line} ${#line}
done < ${NAME_LIST}