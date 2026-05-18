#!/bin/bash
# Script para calcular el interés simple

# Comprobar número de argumentos
if [ "$#" -ne 3 ]; then
    echo "Uso: $0 principal tasa_interes tiempo"
    exit 1
fi

principal=$1
tasa=$2
tiempo=$3

# Calcular el interés simple
interes=$(echo "$principal * $tasa * $tiempo" | bc -l)

echo "El interés simple es: $interes"
