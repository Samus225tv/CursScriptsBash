#!/bin/bash
read -p "Introdueixi X: " X

if [[ ${X} -lt 5 ]]
then
    echo "has introduit un número menor que 5"
fi

# Te dice Si el valor introducido es menor que 5

if [[ ${X} -le 5 ]]
then
    echo "has introduit un número menor o igual que 5"
fi

# Te dice si el valor introducido es menor O IGUAL que 5

if [[ ${X} -gt 5 ]]
then
    echo "has introduit un número mayor que 5"
fi

# Te dice si el valor introducido es mayor que 5

if [[ ${X} -ge 5 ]]
then
    echo "has introduit un número mayor o igual que 5"
fi

# Te dice si el valor introducido es mayor O IGUAL que 5

adw