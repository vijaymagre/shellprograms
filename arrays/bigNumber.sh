#!/bin/bash
read -p "numbers :" -a NUMBERS
BIG=0
for NUM in ${NUMBERS[@]}
do
    if [ $BIG -lt $NUM ]
    then
        BIG=$NUM
    fi
done
echo "Big : $BIG"
