#!/bin/bash

# Mostra un missatge de benvinguda a l'examen d'scripts que indiqui l'usuari, la data i hora. Exemple:
# Benvingut/da a l'examen d'scripts, jo sóc en/na xavi. Avui és dia 11/06/2021 i són les 15:00h.

# Crea la següent estructura de carpetes amb UNA SOLA COMANDA i mostra-la en forma d'ARBRE:
# examen_scripts/
# examen_scripts/apunts
# examen_scripts/exercicis

mkdir "examen_scripts/apunts/exercicis"

# Modifica els permisos del directori examen_scripts per que tothom el pugui llegir i el propietari 

# el pugui llegir, escriure i executar.
# Mostra per pantalla aquests permisos.

# Crea la variable NOTA_EXAMEN i dona-li un valor aleatori entre 0 i 10.
# Mostra una frase per pantalla com aquesta: La nota del meu examen és un 7.

# Demana a l'usuari si ha tingut bona aptitud a classe. 
# Si contesta "Sí" suma-li un punt a la nota de l'examen, si contesta "No" resta-n'hi un.
# Si l'alumne ha aprovat ha de sortir un missatge com: la teva nota final és un 5, has aprovat
# Si l'alumne ha suspès ha de sortir un misstge com: la teva nota és un 3, has suspès