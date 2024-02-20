#!/bin/bash
A=$1
B=$2
C=$3
D=$4
E=$5
F=$6

SUM1=`expr $A + $B`
echo "$A + $B : $SUM1"

SUM2=$((C+D))
echo "$C + $D : $SUM2"

SUM3=$[E+F]
echo "$E + $F : $SUM3"








