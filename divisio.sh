#!/#!/bin/bash
v1=${1}
v2=${2}
DIVISIO=$((($v1*100)/$v2))
echo "Resultat ${v1} / ${v2} = $(($DIVISIO / 100)).$(($DIVISIO % 100))"

#echo "La divisio dona:         $(($DIVISIO / escalaDivisio)).$(($DIVISIO % escalaDivisio))"