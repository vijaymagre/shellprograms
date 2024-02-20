#!/bin/bash
read -p "numbers: " -a N
LEN=${#N[@]}
I=$[LEN-1]
until [ $I -lt 0 ]
do
    echo ${N[I]}
    I=$[I-1]
done