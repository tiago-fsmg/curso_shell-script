#!/usr/bin/env bash 

echo "--------------------------------------------------------------------------------------------"

# Formas de Comparação com if, é possivel fazer com apenas um colchete

if [[ "$1" = "$2" ]]; then 
    echo "São Iguais"
fi

if [[ "$1" = "$2" ]]
then
    echo "São Iguais"
fi

[ "$1" = "$2" ] && echo "São Iguais" # Forma Limpa de se fazer apenas uma comparação