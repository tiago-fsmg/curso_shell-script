#!/usr/bin/env bash

# ------------------------------- VARIÁVEIS ----------------------------------------- #
ARQUIVO_CONF="script.conf"
USAR_CORES="0"
USAR_MAIUSCULAS="0"
MENSAGEM="Mensagem de Teste"

VERDE="\033[32;1m"
VERMELHO="\033[31;1m"
AZUL="\033[34;1m"

# ------------------------------------------------------------------------ #
# ------------------------------- EXECUÇÃO ----------------------------------------- #

eval $(./parser.sh $ARQUIVO_CONF)



[ "$USAR_MAIUSCULAS" = "1" ] &&  MENSAGEM="$(echo -e $MENSAGEM | tr [a-z] [A-Z])"
[ "$USAR_CORES" = "1" ] && MENSAGEM="$(echo -e ${VERDE}$MENSAGEM)"
[ "$USAR_CORES" = "2" ] && MENSAGEM="$(echo -e ${VERMELHO}$MENSAGEM)"
[ "$USAR_CORES" = "3" ] && MENSAGEM="$(echo -e ${AZUL}$MENSAGEM)"

echo "$MENSAGEM"
