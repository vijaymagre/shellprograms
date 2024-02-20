#!/bin/bash
read -p "n : " N
T=$N
SUM=0
while [ $T -gt 0 ]
do
    REM=$[T%10]
    SUM=$[SUM+REM]
    T=$[T/10]
done
printf "given number is : %d and sum of digits : %d\n" $N $SUM