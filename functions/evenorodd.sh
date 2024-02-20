#!/bin/bash
NUMBER_TYPE=""

function evenorodd() {
    local NARGS=$#
    if [ $NARGS -ne 1 ]
    then
        return 93
    fi
    local N=$1
    local REM=$[N%2]
    if [ $REM -eq 0 ]
    then
        NUMBER_TYPE="even"
    else
        NUMBER_TYPE="odd"
    fi
    return 0
}

#main block
N=$1
evenorodd $N
STATUS=$?
if [ $STATUS -eq 0 ]
then
    echo $NUMBER_TYPE
else
    echo "error! input required"
    exit 2
fi