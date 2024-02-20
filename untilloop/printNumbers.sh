#!/bin/bash
F="y"
I=1
until [ $F == "q" ]
do
    echo $I
    I=$[I+1]
    read -p "continue (y/q) : " F
done

