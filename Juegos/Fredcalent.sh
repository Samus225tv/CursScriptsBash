#!/bin/bash

NUMERO=$(( ( RANDOM % 10 )  + 1 ))
VIDES=3
while [ ${VIDES} -ne 0 ]
do
        read -p "Introdueix un número " INTRODUIT
    
    if [[ ${NUMERO} -eq ${INTRODUIT} ]]
    then    
            echo "EUREKA!"
            exit 0
     fi

    # Ha fallat l'introduït

    if [[ ${INTRODUIT} -lt ${NUMERO} ]]
    then
        echo "Fred"
    else
        echo "Calent"
    fi
    #RESTAR UNA VIDA
    VIDES=$((VIDES - 1))
done




echo "El nombre que havies d'adivinar era: $NUMERO"