#!/bin/bash
read -p "enter number: " N
REM=$[N%2]

if [ $REM -eq 0 ]
then    
    printf "%d is an even number\n" $N
else
    printf "%d is an odd number\n" $N
fi