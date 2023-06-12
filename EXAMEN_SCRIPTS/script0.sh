#!/bin/bash

# Mostra un missatge de benvinguda a l'examen d'scripts que indiqui l'usuari, la data i hora. Exemple:
# Benvingut/da a l'examen d'scripts, jo sóc en/na xavi. Avui és dia 11/06/2021 i són les 15:00h.
echo "Benvingut/da a l'examen d'scripts, jo sóc en/na $(users). Avui és dia $(date +%D) i són les $(date +%R)h."

# Mostra per pantalla aquests permisos.
ls -la

# Crea la variable NOTA_EXAMEN i dona-li un valor aleatori entre 0 i 10.
NOTA_EXAMEN=$(( ( RANDOM % 11 )  + 0 ))

# Mostra una frase per pantalla com aquesta: La nota del meu examen és un 7.
echo "La nota del meu exàmen és ${NOTA_EXAMEN}"

# Demana a l'usuari si ha tingut bona aptitud a classe.
#read -p "Has tingut una bona aptitud a classe? " APTITUD 

# Si contesta "Sí" suma-li un punt a la nota de l'examen, si contesta "No" resta-n'hi un.
# if [[ ${APTITUD} -eq "Sí"]]
# then
#     APTITUD=(( ${NOTA_EXAMEN} + 1 ))
# fi

# if [[ ${APTITUD} -eq "No" ]]
# then
#     APTITUD=(( ${NOTA_EXAMEN} - 1 ))
# fi
# Si l'alumne ha aprovat ha de sortir un missatge com: la teva nota final és un 5, has aprovat
if [[ ${NOTA_EXAMEN} -ge 5 ]]
then
    echo "La teva nota final és ${NOTA_EXAMEN} has aprovat."
fi

# Si l'alumne ha suspès ha de sortir un misstge com: la teva nota és un 3, has suspès

if [[ ${NOTA_EXAMEN} -lt 5 ]]
then
    echo "La teva nota final és ${NOTA_EXAMEN} has suspès."
fi