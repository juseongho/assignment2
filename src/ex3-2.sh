#!/bin/bash
num1=$1
bu=$2
num2=$3
case $bu in
 "+")
  echo $(($num1 + $num2))
  ;; 
 "-")
  echo $(($num1 - $num2))
  ;;
 *)
  echo "지원 안함"
  ;;
esac

