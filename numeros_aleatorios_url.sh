#!/bin/bash
NUMEROS_PER_GENERAR=0
if [[ ${#} -eq 0 ]]
then
    NUMEROS_PER_GENERAR=10
elif [[ ${#} -eq 1 ]]
then
    NUMEROS_PER_GENERAR=${1}
fi

URL="https://www.random.org/integers/?num=${NUMEROS_PER_GENERAR}&min=1&max=100&col=1&base=10&format=plain&rnd=new"

SUMA=0
MINIM=101
MAXIM=0
MITJANA=0
for NUMERO in $(curl ${URL})
do
    echo "El valor del número és ${NUMERO}"
    SUMA=$((SUMA + NUMERO))
    #CALCUL DEL MÍNIM
    if [[ ${NUMERO} -lt ${MINIM} ]]
    then
        MINIM=${NUMERO}
    fi
    if [[ ${NUMERO} -gt ${MAXIM} ]]
    then
        MAXIM=${NUMERO}
    fi
    MITJANA=$((SUMA / NUMEROS_PER_GENERAR))
done
echo "SUMA=${SUMA}"
echo "MINIM=${MINIM}"
echo "MAXIM=${MAXIM}"
#MITJANA SENSE DECIMALS
echo "LA MITJANA DELS NUMEROS ES: ${MITJANA}"

#MITJANA SENSE BC
MITJANA=$((($SUMA*100)/$NUMEROS_PER_GENERAR))
echo "La mitjana dels números ${SUMA} / ${NUMEROS_PER_GENERAR} = $(($MITJANA / 100)).$(($MITJANA % 100))"

#MITJANA AMB BC
