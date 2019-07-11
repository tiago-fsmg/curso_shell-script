#!/usr/bin/env bash 
echo "----------------------------------------------------------------------------------------------"

NOME="Tiago

Oliveira"

echo "$NOME" #Exibe a variavel na mesma forma que foi escrita.

#---------------------------------------------------------------------------------------------------

NUMERO_1=85
NUMERO_2=15

TOTAL=$((NUMERO_1+NUMERO_2))

echo $TOTAL #Imprime Valor como Inteiro
echo $TOTAL #Imprime valor como String (Mais Indicado)

#---------------------------------------------------------------------------------------------------

SAIDA_CAT="$(cat /etc/passwd | grep tiago)" # Armazena a saida do comando cat na variavel

echo "$SAIDA_CAT"

echo "----------------------------------------------------------------------------------------------"

echo "Parametro 1: $1" #Exibe o Primeiro parametros enviado para o script
echo "Parametro 2: $2" #Exibe o Segundo parametros enviado para o script
echo "Todos os Parametros: $*" #Exibe todos os parametros enviados para o script
echo "Quantidade de Parametros: $#" #Exibe a quantidade de parametros enviados
echo "Saida do Ultimo Comando: $?" #Exibe o retorno do ultimo comando (Se 0 -> Executou ok | Se outro numero -> Erro)
echo "PID: $$" # Exibe o ID do processo
echo "Nome do arquivo: $0" # Exibe o nome do arquivo executado

echo "----------------------------------------------------------------------------------------------"
