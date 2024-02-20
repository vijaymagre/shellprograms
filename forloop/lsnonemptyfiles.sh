#!/bin/bash
NARGS=$#

if [ $NARGS -ne 1 ]
then
    echo "error! directory is required"
    exit 100
fi

DIR=$1
if [ ! -d $DIR ]
then
    echo "error! not a directory"
    exit 101
fi

for F in $DIR/*
do
    if [ -f $F -a -s $F ]
    then
        echo "$F"
    fi
done