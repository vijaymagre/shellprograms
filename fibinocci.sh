#!/bin/bash
read -p "n: " N
P=0
C=1
NEXT=1
printf "%d\t" $C
while [ $NEXT -le $N ]
do 
    printf "%d\t" $NEXT
    P=$C
    C=$NEXT
    NEXT=$[P+C]    
done
echo ".....bye!"