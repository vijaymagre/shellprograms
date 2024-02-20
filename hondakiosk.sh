#!/bin/bash
read -p "bike model [activa,shine,unicorn,dio]: " MODEL
EX_SHOWROOM_PRICE=0
INSURANCE_AMOUNT=0
ONROAD_PRICE=0

case $MODEL in
"activa")
EX_SHOWROOM_PRICE=125000
;;
"shine")
EX_SHOWROOM_PRICE=145000
;;
"unicorn")
EX_SHOWROOM_PRICE=185000
;;
"dio")
EX_SHOWROOM_PRICE=90000
;;
*)
echo "wrong input choosen, bye!"
exit 1 #terminate program
esac
INSURANCE_AMOUNT=$[(EX_SHOWROOM_PRICE*9)/100]
ONROAD_PRICE=$[EX_SHOWROOM_PRICE+((EX_SHOWROOM_PRICE*23)/100)+INSURANCE_AMOUNT]

printf "%8s model\n" $MODEL
printf "%8d ex-showroom price\n" $EX_SHOWROOM_PRICE
printf "%8d insurance amount\n" $INSURANCE_AMOUNT
printf "%8d onroad price\n" $ONROAD_PRICE









