#!/bin/bash
N=(10 20 30 40 50)

# using for-in loop
: '
for E in ${N[@]}
do
    echo $E
done
'
: '
LEN=${#N[@]}
I=0
# begin from '0' and iterate till the length of the array to print each element
while [ $I -lt $LEN ]
do
    echo ${N[I]}
    I=$[I+1]
done
'

#for with index/counter loop
LEN=${#N[@]}
for ((I=0;I<LEN;I++))
do
    echo ${N[I]}    
done

















