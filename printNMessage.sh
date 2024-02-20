#!/bin/bash
COUNTER=1
while [ $COUNTER -le 5 ]
do
    echo "Good evening!"
    COUNTER=$[COUNTER+1]
done
echo "bye!"