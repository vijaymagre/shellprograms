#!/bin/bash
read -p "n :" N
COUNTER=1
REM=0
while [ $COUNTER -le $N ]
do
    REM=$[COUNTER%2]
    if [ $REM -eq 1 ]
    then
        printf "%d\t" $COUNTER
    fi
    COUNTER=$[COUNTER+1]
done
echo ""