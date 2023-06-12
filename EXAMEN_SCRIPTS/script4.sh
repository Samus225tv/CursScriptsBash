#!/bin/bash
function usage()(
    echo "${0}"
    echo
    echo "has de ser root"
    exit 1
)
# Aquest script s'ha d'executar com a root, en cas de no ser root s'ha de donar un missatge
# d'errada i sortir

if [[ ${UID} -ne 0 ]]
then
    usage
fi

# Mostra un missatge de benvinguda a l'examen d'scripts que indiqui l'usuari, la data i hora. Exemple:
if [[ ${UID} -eq 0 ]]
then
    echo "Benvingut/da a l'examen d'scripts, jo sóc en/na $(users). Avui és dia $(date +%D) i són les $(date +%R)h."
fi
# Benvingut/da a l'examen d'scripts, jo sóc en/na xavi. Avui és dia 11/06/2021 i són les 15:00h.

# Demana que introduiexin un nom d'usuari i guarda-ho dins la variable USER
read -p "Introdueix un nom d'usuari: " USER

# Crear l'usuari de sistema amb el valor de la variable USER
useradd -m ${USER}

# Si s'ha produït una errada creant l'usuari donar un missatge d'error i sortir.
if [[ ${?} -ne 0 ]]
then
    echo "Errada creat l'usuari"
    exit 1
fi

#Mostrau el contingut del fitxer /etc/passwd i comprovau que s'ha creat l'usuari.
cat /etc/passwd
