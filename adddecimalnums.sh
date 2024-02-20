#!/bin/bash
A=$1
B=$2
SUM=$(echo "$A+$B"|bc)
echo "SUM : $SUM"