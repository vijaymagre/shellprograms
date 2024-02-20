#!/bin/bash
read -p "passport no: " PASSPORT_NO
LEN=`expr length $PASSPORT_NO`
if [ $LEN -eq 8 ]
then
    echo "passport no : $PASSPORT_NO  is valid"
fi

if [ $LEN -ne 8 ]
then
    echo "passport no : $PASSPORT_NO is not valid"
fi