#!/bin/bash
function add() {
    NARGS=$#
    if [ $NARGS -ne 2 ]
    then
        echo "error! 2 numbers as input are required"
        exit 1
    fi

    X=$1
    Y=$2
    SUM=$[X+Y]
    echo "sum : $SUM"
}

#main block
F="y"
until [ $F == "n" ]
do
    read -p "a :" A
    read -p "b :" B
    add $A $B
    read -p "want to add more numbers (y/n): " F
done



