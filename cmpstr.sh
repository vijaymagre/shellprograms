#!/bin/bash
STR1=$1
STR2=$2
MATCH_COUNT=`expr "$STR1" : "$STR2"`
echo "match count: $MATCH_COUNT" 