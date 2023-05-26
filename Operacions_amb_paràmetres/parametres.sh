#!/bin/bash

#veurem com funcionen els paràmetres
PARAMETRE0=${0}

echo "el parametre 0 és ${0}"

# El paràmetre ${0} ens indica el nom de l'EXECUTABLE

echo "el paràmetre 1 és ${1}"

# El paraàmetre ${1} es el primer paràmentre posicional

echo "el paràmetre 2 és ${2}"

# El paraàmetre ${2} es el Segón paràmentre posicional
# És poden escriure fins a 9 (verificar)

parametre_sostingut=${#}
echo "el paràmetre ${parametre_sostingut} indica ..."

# El paraàmetre ${#} Indica el nombre de paràmetres que hi ha | Si el paràmetre estan entre "Eawd d w dw" Ho detecta com un únic paràmetre

