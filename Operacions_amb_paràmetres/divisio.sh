#!/#!/bin/bash

#control d'errades
#Si no ens passen dos parametres donam missatge d'errada i sortim del script

NUM_PARAM=${#}
if [[ ${NUM_PARAM} -ne 2 ]]
then
    echo "ERROR: has d'introduir dos paràmetres"
    exit 1
fi



v1=${1}
v2=${2}
DIVISIO=$((($v1*100)/$v2))
echo "Resultat ${v1} / ${v2} = $(($DIVISIO / 100)).$(($DIVISIO % 100))"

#echo "La divisio dona:         $(($DIVISIO / escalaDivisio)).$(($DIVISIO % escalaDivisio))"