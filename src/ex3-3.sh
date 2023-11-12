#!/bin/bash
weight=$1
height=$2
h=$(echo "scale=4; $height/100" | bc)
bmi=$(echo "scale=2; $weight / ($h * $h)" | bc)
if [ $(echo "$bmi < 18.5" | bc) -eq 1 ]; 
then
 echo "저체중"
elif [ $(echo "$bmi >= 23" | bc) -eq 1 ]; 
then
 echo "과체중"
else
 echo "정상체중"
fi
exit 0
