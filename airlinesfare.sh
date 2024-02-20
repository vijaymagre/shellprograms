#!/bin/bash
read -p "base ticket price: " BASE_PRICE
read -p "age: " AGE
TICKET_PRICE=0
TAX_AMT=0
TOTAL_FARE=0

if [ $AGE -le 2 ]; then
    TICKET_PRICE=0
    TAX_AMT=$[BASE_PRICE*13/100]
elif [ $AGE -gt 2 -a $AGE -le 7 ]; then
    TICKET_PRICE=$[BASE_PRICE*30/100]
    TAX_AMT=$[TICKET_PRICE*13/100]
elif [ $AGE -gt 7 -a $AGE -le 12 ]; then
    TICKET_PRICE=$[BASE_PRICE*50/100]
    TAX_AMT=$[TICKET_PRICE*13/100]
else
    TICKET_PRICE=$BASE_PRICE
    TAX_AMT=$[TICKET_PRICE*13/100]
fi
TOTAL_FARE=$[TICKET_PRICE+TAX_AMT]
printf "%4d : base airline ticket price\n" $BASE_PRICE
printf "%4d : chargeable ticket price\n" $TICKET_PRICE
printf "%4d : tax amount\n" $TAX_AMT
printf "%4d : total fare\n" $TOTAL_FARE



