#!/bin/bash

#control d'errades
#Si no ens passen dos parametres donam missatge d'errada i sortim del script

NUM_PARAM=${#}
if [[ ${NUM_PARAM} -ne 2 ]]
then
    echo "ERROR: has d'introduir dos paràmetres"
    exit 1
fi



RESTA=$((${1} - ${2}))
echo "${1} - ${2} = ${RESTA}"