#!/bin/bash

#aquest script ha de recollir dos paràmetres els ha 
#de sumar i ha d'escriure per pantalla "a+b= resultat"

read -p "introdueix el valor de a: " a
read -p "introdueix el valor de b: " b

echo "Has introduït $a i $b"

SUMA=$((a + b))
echo "${a}+${b}=${SUMA}"