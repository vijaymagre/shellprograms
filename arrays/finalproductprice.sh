#!/bin/bash
read -p "product prices : " -a PROD_PRICES

for PROD_PRICE in ${PROD_PRICES[@]}
do
    TAX_AMT=$[(PROD_PRICE*10)/100]
    TOTAL_PROD_PRICE=$[PROD_PRICE+TAX_AMT]
    echo "product price: $PROD_PRICE, after taxes: $TOTAL_PROD_PRICE"
done
