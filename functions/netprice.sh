#!/bin/bash
GST_AMT=0
NET_AMT=0

function gstTax() {
    local L_NARGS=$#
    if [ $L_NARGS -ne 2 ]; then
        return 100
    fi
    local L_CATEGORY=$1
    local L_PRICE=$2

    if [ $L_CATEGORY == "education" ]; then
        GST_AMT=$[(L_PRICE*8)/100]
    elif [ $L_CATEGORY == "transport" ]; then
        GST_AMT=$[(L_PRICE*18)/100]
    elif [ $L_CATEGORY == "food" ]; then
        GST_AMT=$[(L_PRICE*5)/100]
    else
        return 101
    fi
    return 0
}
function netPrice() {
    local L_NARGS=$#
    if [ $L_NARGS -ne 3 ]; then
        return 200
    fi
    local L_TRANSPORT_TYPE=$1
    local L_PRICE=$2
    local L_GST_AMT=$3
    local L_TRANSPORT_AMT=0

    if [ $L_TRANSPORT_TYPE == "local" ]; then
        L_TRANSPORT_AMT=$[(L_PRICE*8)/100]
    elif [ $L_TRANSPORT_TYPE == "national" ]; then
        L_TRANSPORT_AMT=$[(L_PRICE*12)/100]
    else
        return 201
    fi
    NET_AMT=$[L_GST_AMT + L_PRICE + L_TRANSPORT_AMT]
    return 0
}

#main block
CATEGORY=$1
PRICE=$2
TRANSPORT_TYPE=$3
gstTax $CATEGORY $PRICE
GST_STATUS=$?

if [ $GST_STATUS -eq 0 ]; then
    netPrice $TRANSPORT_TYPE $PRICE $GST_AMT
    NETPRICE_STATUS=$?
    if [ $NETPRICE_STATUS -eq 0 ]; then
        echo "Net price: $NET_AMT"
    elif [ $NETPRICE_STATUS -eq 200 ]; then
        echo "error! transport type is required"
        exit 4
    elif [ $NETPRICE_STATUS -eq 201 ]; then
        echo "error! wrong transportType, [local, national] only supported"
        exit 5
    fi
elif [ $GST_STATUS -eq 100 ]; then
    echo "error! category and price is required"
    exit 1
elif [ $GST_STATUS -eq 101 ]; then
    echo "error! wrong category, [education, transport, food] are only supported"
    exit 2
fi
















