#!/bin/bash
read -p "n: " N
read -p "divisor: " DIVISOR

for((I=1;I <= N; I++))
do
    REM=$[I%DIVISOR]
    if [ $REM -eq 0 ]
    then
        echo "$I"
    fi
done