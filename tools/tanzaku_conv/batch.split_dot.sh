#!/bin/sh

FN_PASSWD="./conv/passwords.work.txt" 
FN_PREFIX="passwords_"
FN_HASH="passwords.sha256"
DN_OUTPUT="./conv"


#echo '.'
cat ${FN_PASSWD} | grep "^\." > ${DN_OUTPUT}/${FN_PREFIX}..txt
