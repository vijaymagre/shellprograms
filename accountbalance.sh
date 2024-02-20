#!/bin/bash
F_ACCOUNT_NO=$1
ACCOUNT_NO=`expr substr $F_ACCOUNT_NO 7 6 `
printf "account no : %12s\n" $ACCOUNT_NO
printf "balance : %12d\n" 500837