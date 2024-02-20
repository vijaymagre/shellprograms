#!/bin/bash
read -p "n :" N
T=$N
R=0
while [ $T -gt 0 ]
do
    REM=$[T%10]
    R=$[(R*10)+REM]
    T=$[T/10]
done

if [ $N -eq $R ]
then
    echo "$N is palindrome"
else
    echo "$N is not a palindrome"
fi