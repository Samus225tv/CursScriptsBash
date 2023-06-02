#!/bin/bash
function usage(){
    echo "Usage  ${0}"
    echo
    echo "Has de ser root"
    exit 1
}

#Script per crear un usuari

#primer comprovam que som l'usuari root 
if [[ ${UID} -ne 0 ]]
then
    usage
fi

read -p "Introdueix el nom d'usuari: " USER_NAME

echo "creant l'usuari ${USER_NAME}"
