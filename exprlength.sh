#!/bin/bash
PASSPORT_NO=$1

#LEN=$(echo -n $PASSPORT_NO | wc -c)
#echo "length : $LEN"

LEN=`expr length $PASSPORT_NO`
echo "length : $LEN"