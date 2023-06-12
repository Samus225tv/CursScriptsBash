#!/bin/bash
#El nom del script ha de ser script2.sh
#Aquest script ha d'admetre un paràmetre i només un
#en cas de no rebre un paràmetre s'ha de sortir i emetre una errada
function usage()(
    echo "${0} Error. Solo puedes tener 1 parámetro."
    exit 1
)
num_param=${#}
echo "numero de parametres: ${num_param}"
if [[ ${num_param} -ne 1 ]]
then
   
    usage
fi 

#el paràmetre acceptat és un any de naixement i s'ha de guardar en la variable ANY_NAIXEMENT
ANY_NAIXEMENT=${1}
#Aquest script ha de calcular l'edat de la data introduida i guardar-la en la variable EDAT
if [[ ${num_param} -eq 1 ]]
then
    #El script ens ha de demanar que introduim el nostre nom i guardar-lo en la variable NOM
    read -p "Introdueix el teu Nom: " NOM   
    
    EDAT=(( $(date +%D) - ${ANY_NAIXEMENT} ))
    #El script ha de donar un missatge per pantalla del tipus "GUILLEM tens 47 anys" (per exemple)
    echo ${NOM} ${ANY_NAIXEMENT}

fi

#El script ha de donar un missatge per pantalla del tipus "GUILLEM tens 47 anys" (per exemple)

echo "${NOM} tens ${EDAT} anys."