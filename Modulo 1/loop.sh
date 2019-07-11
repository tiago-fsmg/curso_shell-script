#!/usr/bin/env bash 

echo "=========FOR 1"

for (( i=0; i < 10; i++ )); do 
    echo "$i"
done

echo "=========FOR 2 (seq)"

for i in $(seq 10)
do
    echo "$i"
done


echo "=========FOR 3 (array)"

Frutas=(
    "Laranja"
    "Abacaxi"
    "Melancia"
    "Manga"
    "Goiaba"
)

for i in "${Frutas[@]}"
do
    echo "$i"
done

echo "=========while"

cont=0

while [ $cont -lt ${#Frutas[@]} ];
do 
    echo $cont
    cont=$(( cont + 1 ))
done