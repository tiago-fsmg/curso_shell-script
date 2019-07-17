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

# ------------------------------- TESTES ----------------------------------------- #

[ ! -r "$ARQUIVO_CONF" ] && echo "Sem Acesso ao arquivo de configuracao" && exit 1

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #

DefinirParametros () {

  local parametro="$(echo $1 | cut -d = -f 1)"
  local valor="$(echo $1 | cut -d = -f 2)"

  case "$parametro" in
    USAR_CORES)      USAR_CORES="$valor"      ;;
    USAR_MAIUSCULAS) USAR_MAIUSCULAS="$valor" ;;
  esac

}

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

while read -r linha; do
  [ "$(echo $linha | cut -c1)" = "#" ] && continue
  [ ! "$linha" ] && continue
  DefinirParametros "$linha"
done < "$ARQUIVO_CONF"

[ "$USAR_MAIUSCULAS" = "1" ] &&  MENSAGEM="$(echo -e $MENSAGEM | tr [a-z] [A-Z])"
[ "$USAR_CORES" = "1" ] && MENSAGEM="$(echo -e ${VERDE}$MENSAGEM)"
[ "$USAR_CORES" = "2" ] && MENSAGEM="$(echo -e ${VERMELHO}$MENSAGEM)"
[ "$USAR_CORES" = "3" ] && MENSAGEM="$(echo -e ${AZUL}$MENSAGEM)"

echo "$MENSAGEM"

# ------------------------------------------------------------------------ #
