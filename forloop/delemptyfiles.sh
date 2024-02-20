#!/bin/bash
NARGS=$#
FILES_DELETED=0
if [ $NARGS -ne 1 ]
then
    echo "error! directory required"
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
    #echo $F
    if [ -f $F -a ! -s $F ]
    then
        rm $F
        FILES_DELETED=$[FILES_DELETED+1]
    fi
done
printf "%d empty files deleted\n" $FILES_DELETED


