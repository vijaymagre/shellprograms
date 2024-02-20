#!/bin/bash
read -p "numbers: " -a NUMBERS
declare -a POS_NUMBERS
#INDEX=0
for NUM in ${NUMBERS[@]}
do
    if [ $NUM -gt 0 ]
    then
        POS_NUMBERS[${#POS_NUMBERS[@]}]=$NUM
        #INDEX=$[INDEX+1]
    fi
done
echo "positive numbers : ${POS_NUMBERS[@]}"
