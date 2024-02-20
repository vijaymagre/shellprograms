#!/bin/bash
SUM=0
function add() {
    NARGS=$#
    if [ $NARGS -ne 2 ]
    then
        return 100
    fi
    A=$1
    B=$2
    SUM=$[A + B]   
    return 0
}
#main block
add $@
STATUS=$?
#echo "status : $STATUS"

if [ $STATUS -eq 0 ]
then
    echo "sum : $SUM"
elif [ $STATUS -ne 0 ]
then
    echo "error! arguments are missing"
    exit 1
fi
