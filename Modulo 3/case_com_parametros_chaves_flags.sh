#!/usr/bin/env bash
#
# chaves_falgs.sh Exibe Usuarios de /etc/passwd
#
# Site:       https://4fasters.com.br
# Autor:      Mateus Müller
# Manutenção: Tiago Oliveira
#
# ------------------------------------------------------------------------ #
#  Este programa irá cotar o último valor do Bitcoin com base na API xxxx
#
#  Exemplos:
#      $ ./chaves_flags.sh -s
#      Exibe todos os usuarios de /etc/passwd e ordem alfabetica.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v0,1 15/07/2019 Tiago
#       - Início do programa
#       - Exibe Usuarios
#
#   v0,1 15/07/2019 Tiago
#       - Estrutura do codigo modificado
#       - Adicionada função de exibir em Maiuscolo
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.12
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
# 	.Mateus Müller - Criador do Codigo.
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"

MENSAGEM="
 $(basename $0) - [OPÇÕES]

   -h - Menu de Ajuda
   -v - Vesão
   -s - Ordena a Saida
   -m - Coloca em Maiusculo
"
VERSION="v0.2"

CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

case "$1" in
  -h) echo "$MENSAGEM" && exit 0        ;;
  -v) echo "$VERSION" && exit 0         ;;
  -s) CHAVE_ORDENA=1                    ;;
  -m) CHAVE_MAIUSCULO=1                 ;;
   *) echo "$USUARIOS" && exit 0        ;;
esac

[ $CHAVE_ORDENA -eq 1 ] && echo "$USUARIOS" | sort && exit 0
[ $CHAVE_MAIUSCULO -eq 1 ] && echo "$USUARIOS" | tr [a-z] [A-Z] && exit 0

# ------------------------------------------------------------------------ #
