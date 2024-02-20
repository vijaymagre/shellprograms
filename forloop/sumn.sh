#!/bin/bash
SUM=0
for N in $@
do
    SUM=$[SUM+N]
done
echo "sum : $SUM"
