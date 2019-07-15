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
"
VERSION="v0.2"

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

case "$1" in
  -h) echo "$MENSAGEM" && exit 0        ;;
  -v) echo "$VERSION" && exit 0         ;;
  -s) echo "$USUARIOS" | sort && exit 0 ;;
   *) echo "$USUARIOS"                  ;;
esac

# ------------------------------------------------------------------------ #
