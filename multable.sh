#!/bin/bash
read -p "n :" N
COUNTER=1

while [ $COUNTER -le 10 ]
do
    MUL=$[COUNTER*N]
    printf "%2d x %2d = %2d\n" $COUNTER $N $MUL
    COUNTER=$[COUNTER+1]
done