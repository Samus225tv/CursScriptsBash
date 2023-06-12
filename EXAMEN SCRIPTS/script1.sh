#!/bin/bash

#nom del script script1.sh
echo ${0}
#aquest script ha d'acceptar un màxim de dos paràmetres
#si rebem més de 2 paràmetres ens ha de donar una errada i sortir
function usage()(
    echo "${0} Error. No valen más de 2 parámetros."
    exit 1
)
#al final l'script ha d'emetre un missatge per pantalla salundant a l'usuari
num_param=${#}
echo "numero de parametres: ${num_param}"
if [[ ${num_param} -gt 2 ]]
then

    usage
fi
#si rebem un paràmetre aquest serà el nostre nom, s'ha d'introduir en la variable NOM 
NOM=${1}
#si rebem un segon paràmetre aquest serà el LLINATGE i s'ha d'introduir dins aquesta variable
LLINATGE=${2}
#al final l'script ha d'emetre un missatge per pantalla salundant a l'usuari
if [[ ${num_param} -le 2 ]]
then

    echo Bon dia ${NOM} ${LLINATGE} !!!
fi
