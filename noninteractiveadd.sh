#!/bin/bash
A=$1
B=$2
C=$3
SUM=$[A+B+C]
echo "sum : $SUM"
echo "program name : $0"
echo "no of arguments supplied : $#"
echo "total arguments: $@"
echo "total arguments escape quote: $*"