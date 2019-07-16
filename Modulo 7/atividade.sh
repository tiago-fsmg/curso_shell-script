#!/usr/bin/env bash
#
# atividade.sh -> Exibe as Distribuicoes presentes na primeira pagina do distrowatch.com
#
# Autor:      Tiago Oliveira
#
# ------------------------------------------------------------------------ #
#  Este programa ira Exibir os sistemas presentes na primeira pagina do distrowatch
#  ou o top 100 dos oltimos 6 Meses do site.
#
#  Exemplos:
#      $ ./atividade.sh -t
#      Exie os 100 sistemas mais acessados segundo o distrowatch.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v0.1 16/06/2019, Tiago:
#       - Início do programa
#       - Exibe os top sites do distrowatch
#
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.12
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
#   Mateus Muller - Instrutor do Curso
#
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
CHAVE_TOP100=0
DISTROS=/tmp/distros.txt
VERSAO="v0.1"
VERMELHO="\033[31;1m"
AZUL="\033[34;1m"
VERDE="\033[32;1m"
AJUDA="
$(basename $0) - [OPCOES]

    -t   - Exibe as Top 100 Distribuicoes.
    -h   - Ajuda (--help).
    -v   - Versão.
"

# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

[ ! -x "$(which curl)" ] && sudo apt install curl -y # curl instalado ?

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #

Emprimir () {
  while read -r distro; do
      echo -e "${VERDE}--> ${AZUL}$distro"
  done < "$DISTROS"
}

Lertop () {
  curl https://distrowatch.com/ | grep phr2 | sed 's/<td.*hr">//;s/<\/a.*td>//' > /tmp/distros.txt
}

Lerinicio () {
  curl https://distrowatch.com/ | grep Release: | sed 's/<\/select.*tion>//;s/<td.*Release://;s/<\/a.*td>//' > /tmp/distros.txt
}

Testvariavel () {
  case "$1" in
      -t) CHAVE_TOP100=1                                                         ;;
      -h) echo "$AJUDA" && exit 0                                                ;;
      --help) echo "$AJUDA" && exit 0                                            ;;
      -v) echo "$VERSAO" && exit 0                                               ;;
       *) echo "$AJUDA" && echo -e "${VERMELHO}Parametro Incorreto: $1" && exit 1 ;;
  esac

}

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

[ "$1" ] && Testvariavel "$1"

[ "$CHAVE_TOP100" -eq 1 ] && Lertop && Emprimir && exit 0

Lerinicio && Emprimir && exit 0

exit 1

# ------------------------------------------------------------------------ #
