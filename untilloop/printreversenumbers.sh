#!/bin/bash
read -p "n :" N
I=$N
until [ $I -eq 0 ]
do
    echo $I
    I=$[I-1]
done