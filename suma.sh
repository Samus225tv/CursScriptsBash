#!/bin/bash
#control d'errades
#Si no ens passen dos parametres donam missatge d'errada i sortim del script
NUM_PARAM=${#}

#aquest script ha de recollir dos paràmetres els ha 
#de sumar i ha d'escriure per pantalla "a+b= resultat"

A=${1}
B=${2}
SUMA=$((${A} + ${B}))
echo "${B} + ${A} = ${SUMA}"
