#!/usr/bin/env bash
#
# web.sh - Inicia Servidor localhost PHP
#
# Site:       https://giganet.psi.br
# Autor:      Tiago Oliveira
#
# ------------------------------------------------------------------------ #
#  Este programa iráIniciar um servidor PHP na pasta local
#
#  Exemplos:
#      $ ./web.sh -d -p 8080
#      Neste exemplo o script ira Inicia o PHP na pasta local e na porta 8080 em modo de debug.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v0.1 15/07/2019,Tiago:
#       - Início do programa
#
#------------------------------------------------------------------------- #
# Testado em:
#   bash 4.4.12
#   bash 5.0.3
#   zsh 5.3.1
# ------------------------------------------------------------------------ #

# ------------------------------- VARIAVEIS ----------------------------------------- #

IP=0.0.0.0
PORTA=8000
PASTA=$(pwd)
VERSAO=V0.1
CHAVE_DEBUG=0
AJUDA="
 $(basename $0) - [OPCOES]

 	-a - Difine addres de acesso.
	-d - Define modo de debug
	-h - Ajuda.
	-p - Define porta de execucao.
	-r - Define Pasta root do projeto.
	-v - Vercao.

"
# ------------------------------------------------------------------------ #

#- ------------------------------ TESTES ----------------------------------------- #

[ "$(dpkg --list | grep php | wc -l)" -eq "0" ] && echo "----PHP nao esta instalado----" && exit 1

# ------------------------------------------------------------------------ #

# ------------------------------- FUNCOES ----------------------------------------- #

Debugar () {

  local mensagem="
    Iniciando Servidor...
    IP= $IP
    PORTA= $PORTA
    ROOT= $PASTA
  "

  echo "$mensagem"

}

# ------------------------------------------------------------------------ #


# ------------------------------- EXECUCAO ----------------------------------------- #

while test -n "$1"
do
  case "$1" in
	  -a) [ $2 ] && IP=$2 && shift			;;
	  -d) CHAVE_DEBUG=1		 	          	;;
	  -h) echo "$AJUDA" && exit 0			  ;;
	  -p) [ $2 ] && PORTA=$2 && shift		;;
	  -r) [ $2 ] && PASTA=$2 && shift		;;
	  -v) echo "$VERSAO" && exit 0			;;
	   *) echo "Opcao Invalida: $1 " && exit 1	;;
  esac
  shift
done

[ "$CHAVE_DEBUG" -eq "1" ] && Debugar

php -S $IP:$PORTA -t $PASTA

# ------------------------------------------------------------------------ #
