#!/bin/bash
read -p "n : " N
COUNTER=2
while [ $COUNTER -lt $N ]
do
    REM=$[N%COUNTER]
    if [ $REM -eq 0 ]
    then
        echo "$N is not a prime number"
        exit 0 #terminate program
     fi
     COUNTER=$[COUNTER+1]
done
echo "$N is prime number"
