#!/bin/bash

#aquest script ha de recollir dos paràmetres els ha 
#de sumar i ha d'escriure per pantalla "a+b= resultat"


SUMA=$((${1} + ${2}))
echo "${1} + ${2} = ${SUMA}"