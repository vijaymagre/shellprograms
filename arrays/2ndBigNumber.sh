#!/bin/bash
read -p "numbers: " -a NUMBERS
BIG=0
S_BIG=0
for NUM in ${NUMBERS[@]}
do
    if [ $NUM -gt $BIG ]
    then
        S_BIG=$BIG
        BIG=$NUM
    elif [ $NUM -gt $S_BIG ]
    then
        S_BIG=$NUM
    fi
done

echo "2nd biggest number is : $S_BIG" 
