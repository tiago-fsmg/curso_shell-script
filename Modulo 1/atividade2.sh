#!/usr/bin/env bash

for nun in $(seq 10)
do 
[ $(($nun%2)) -ne 0 ] && echo "$nun"
[ $(($nun%2)) -eq 0 ] && echo "$nun - Divisivel por 2"
done