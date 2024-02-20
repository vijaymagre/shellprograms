#!/bin/bash
read -p "gross income:" GROSS_INCOME
read -p "gender:" GENDER
TAX_AMOUNT=0

if [ $GENDER == "male" ]
then
    TAX_AMOUNT=$[(GROSS_INCOME*15)/100]
else   
    TAX_AMOUNT=$[(GROSS_INCOME*12)/100]
fi
printf "gross income: %d and tax amount to be paid : %d\n" $GROSS_INCOME $TAX_AMOUNT