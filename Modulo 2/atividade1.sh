#!/usr/bin/env bash
#
# Atividade Boas Praticas em Shell Script
#
# Site:       https://Udemy.com.br
# Autor:      Mateus Müller
# Manutenção: Tiago Oliveira
#
# ------------------------------------------------------------------------ #
#  Este programa e uma atividade de Boas Praticas em Shell Script
#
#  Exemplos:
#      $ ./arquivo.sh
#      Neste exemplo o script ira mostras varias linhas de "*" de forma a diminuir a quantidade de acordo com a linha.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 03/10/2018, Mateus:
#       - Início do programa
#       - Conta com a funcionalidade imprimir "*"
#   v1.1 11/07/2019, Tiago:
#       - Identação do Codigo
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.12
#   bash 4.4.19
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
#	Mateus Müller - Disponibilizou o codigo
#
#--------------------------------------------------------------------------#

#------------------------------- VARIÁVEIS ----------------------------------------- #
#Inicia Variaveis
comeca=0 ate=100
[ $comeca -ge $ate ] && exit 1
#--------------------------------------------------------------------------#

# ------------------------------- EXECUÇÃO ----------------------------------------- #


#Escreve no terminal
for i in $(seq $comeca $ate)
do
 for j in $(seq $i $ate)
 do 
   printf "*"
 done
 printf "\n"
done

#------------------------------------------------------------------------------------#


