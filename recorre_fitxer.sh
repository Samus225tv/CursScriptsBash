#!/bin/bash
#ESCRIU UN SCRIPT QUE RECORRI EL FITXER numeros.txt i 
#mostri QUANTES LÍNIES TÉ EL FITXER
for linia in $(cat numeros.txt)
do
   #INCREMENTAR EL NÚMERO DE LINIES
   NUMERO_LINIES=$((NUMERO_LINIES+1))
done
echo "linia: ${linia}"