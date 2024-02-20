#!/bin/bash
read -p "gross salary:" SAL
TAX_AMT=0

if [ $SAL -le 100000 ]
then
    TAX_AMT=0
elif [ $SAL -gt 100000 -a $SAL -le 200000 ]
then
    TAX_AMT=$[SAL*10/100]
elif [ $SAL -gt 200000 -a $SAL -le 300000 ]    
then
    TAX_AMT=$[SAL*20/100]
else
    TAX_AMT=$[SAL*30/100]
fi
printf "salary is %d and tax amount : %d\n" $SAL $TAX_AMT












