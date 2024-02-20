#!/bin/bash
read -p "connection type:" CNT_TYPE
read -p "units consumed:" UNITS
BILL_AMT=0

if [ $CNT_TYPE == "domestic" ]
then
    #domestic
    if [ $UNITS -le 100 ]
    then
        BILL_AMT=$(echo "$UNITS * 2.20" | bc )
    elif [ $UNITS -gt 100 -a $UNITS -le 300 ]    
    then
        BILL_AMT=$(echo "(100*2.20) + (($UNITS-100)* 3.30)" | bc)
    else
        BILL_AMT=$(echo "(100*2.20) + (200*3.30) + (($UNITS-300)* 4.5)" | bc)
    fi    
else
    #commercial
    if [ $UNITS -le 200 ]
    then
        BILL_AMT=$[UNITS * 6]
    elif [ $UNITS -gt 200 -a $UNITS -le 500 ]   
    then
        BILL_AMT=$[(200*6)+(UNITS-200)*10]
    else
        BILL_AMT=$[(200*6)+(300*10)+(UNITS-500)*15]
    fi
fi
printf "%10s : connection type\n" $CNT_TYPE
printf "%10d : units consumed\n" $UNITS
printf "%10f : bill amount\n" $BILL_AMT





