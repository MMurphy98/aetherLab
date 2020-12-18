#!/bin/bash

NAME_LIST="/home/murphy/aetherlab/Namelist.txt"

while read name
do
    echo ${name} ${#name}
done < ${NAME_LIST}