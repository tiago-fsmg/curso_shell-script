#!/usr/bin/env bash

#Lista Todos od grupos do Sistema
GRUPOS="$(cut -d : -f 1 /etc/group)"

#Grupos que começam com a letra "r" no arquivo /etc/group
echo "$GRUPOS" | grep ^r

echo "------------------------------------------------------------"
#Grupos que terminem com a letra "t"
echo "$GRUPOS" | grep t$

echo "------------------------------------------------------------"
#Grupos que comecem com a letra "r" e terminem com a letra "t"
echo "$GRUPOS" | grep ^r.*t$

echo "------------------------------------------------------------"
#Grupos que terminam com a letra "e" ou "d"
echo "$GRUPOS" | egrep "e$|d$"

echo "------------------------------------------------------------"
#Grupos que não terminam com a letra "e" ou "d"
echo "$GRUPOS" | egrep [^"e$|d$"]

echo "------------------------------------------------------------"
#Grupos que começam com qualquer dígito e a segunda letra seja um "u" ou "d"
echo "$GRUPOS" | egrep ^."[u|d]"

echo "------------------------------------------------------------"
#Grupos que tenha seu nome de 2 a 4 dígitos de tamanho
echo "$GRUPOS" | egrep "^.{2,4}$"

echo "------------------------------------------------------------"
#Grupos que comecem com "r" ou "s" (use o operador OR)
echo "$GRUPOS" | egrep "^r|^s"





#Atividade do Professor

$ cut -d : -f 1 /etc/group | grep "^r"

$ cut -d : -f 1 /etc/group | grep "t$"

$ cut -d : -f 1 /etc/group | grep "^r.*t$"

$ cut -d : -f 1 /etc/group | grep "[ed]$"

$ cut -d : -f 1 /etc/group | grep "[^ed]$"

$ cut -d : -f 1 /etc/group | grep "^.[ud]"

$ cut -d : -f 1 /etc/group | egrep "^.{2,4}$"

$ cut -d : -f 1 /etc/group | egrep "^r|^s"
