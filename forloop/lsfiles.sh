#!/bin/bash
N=$#
if [ $N -ne 1 ]
then
    echo "ERROR! directory is required"
    exit 1
fi
DIR=$1
if [ ! -d $DIR ]
then
    echo "ERROR! directory not found"
    exit 1
fi
for F in $DIR/*
do
    if [ -f $F ]
    then    
        echo "$F"
    fi
done
