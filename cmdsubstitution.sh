#!/bin/bash
DIRECTORY_NM=$1
FILES=$(ls $DIRECTORY_NM) #collect the output of the command into an variable
#echo $FILES
printf "%s\n" $FILES