#!/usr/bin/env bash
# ------------------------------- VARIÁVEIS ----------------------------------------- #
ARQUIVO_CONF="$1"

# ------------------------------- TESTES ----------------------------------------- #

[ ! -e "$ARQUIVO_CONF" ] && echo "Arquivo de configuracao nao encontrado" && exit 1
[ ! -r "$ARQUIVO_CONF" ] && echo "Sem Acesso ao arquivo de configuracao" && exit 1

while read -r linha; do
  [ "$(echo $linha | cut -c1)" = "#" ] && continue
  [ ! "$linha" ] && continue

  chave="$(echo $linha | cut -d = -f 1)"
  valor="$(echo $linha | cut -d = -f 2)"

  echo "$chave=$valor"

done < "$ARQUIVO_CONF"
