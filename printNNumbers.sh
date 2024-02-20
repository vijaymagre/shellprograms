#!/bin/bash
read -p "n: " N
COUNTER=1
while [ $COUNTER -le $N ]
do
    printf "%d\t" $COUNTER
    COUNTER=$[COUNTER+1]
done
printf "\nbye!\n"
