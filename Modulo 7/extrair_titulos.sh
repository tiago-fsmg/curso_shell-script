#!/usr/bin/env bash

# ---------------------------------Variaveis------------------------------------

ARQUIVO_DE_TITULOS=/tmp/titulos.txt

VERMELHO="\033[31;1m"
AZUL="\033[34;1m"

# --------------------------------------------------------------------------


# ---------------------------------TESTE------------------------------------

[ ! -x "$(which curl)" ] && sudo apt install curl -y # curl instalado ?

# ---------------------------------EXECUÇÂO-----------------------------------------

curl http://lxer.com | grep blurb | sed 's/<div.*line">//;s/<\/span.*//' > /tmp/titulos.txt

while read -r titulo_lxer; do
    echo -e "${VERMELHO}Titulo: ${AZUL}$titulo_lxer"
done < "$ARQUIVO_DE_TITULOS"
