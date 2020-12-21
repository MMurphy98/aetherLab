#!/bin/bash

# Copy the schematic to the Destination Directory and rename
DIR_CURRENT="/home/postgrad21/majinge/Aether/Aether_exam"
NAME_FILE="${DIR_CURRENT}/Namelist.txt"
DIR_RESULT="${DIR_CURRENT}/results_09_30_57"
DIR_DES="${DIR_CURRENT}/final/Miller#2dOTA/"
echo ${DIR_DES}


while read name
do
    DIR_SRC="${DIR_RESULT}/${name}_exam/final/Miller#2dOTA/schematic"
    DIR_DES_tmp="${DIR_DES}schematic_${name}"

    echo Source: ${DIR_SRC} Destination: ${DIR_DES_tmp}
    cp -r ${DIR_SRC} ${DIR_DES_tmp}
    echo $name
done < ${NAME_FILE}    


