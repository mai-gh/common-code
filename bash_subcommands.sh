#!/bin/bash
declare -a FUNCS


function ggg () {
  echo yyyyy
}
FUNCS+=(ggg)


FUNCS+=(uuu);uuu(){ echo iiiii;}


if [[ "${BASH_SOURCE[0]}" != "${0}" ]]; then
  :
elif [[ " ${FUNCS[@]} " =~ " ${1} " ]]; then
  $1
else
  echo "USAGE FOR $0:"
  for f in "${FUNCS[@]}"; do
    echo " ${0} ${f}"
  done
fi

