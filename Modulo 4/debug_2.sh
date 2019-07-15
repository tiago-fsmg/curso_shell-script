# ------------------------------- VARIÁVEIS ----------------------------------------- #]
CHAVE_DEBUG=0
NIVEL_DEBUG=0
# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #
Debugar () {
  [ $1 -le $NIVEL_DEBUG ] && echo "Debug $* ------"
}

Soma () {
  local total=0;

  for i in $(seq 25); do
    Debugar 1 "Entra no for com: $i"
    total=$(($total+$i))
    Debugar 2 "Saiu do for com: $total"
  done

  echo $total
}
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

case "$1" in
  -d) [ $2 ] && NIVEL_DEBUG=$2 ;;
esac

Soma

# ------------------------------------------------------------------------ #