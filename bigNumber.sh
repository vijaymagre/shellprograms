#!/bin/bash
#wap to find biggest of 2 given numbers (not code)
read -p "a: " A
read -p "b: " B

#evaluate which one is big and based on that write the output
if [ $A -gt $B ]
then
    echo "a: $A is big"
fi

if [ $B -gt $A ]
then
    echo "b: $B is big"
fi

if [ $A -eq $B ]
then
    echo "a: $A and b: $B are equal"
fi



