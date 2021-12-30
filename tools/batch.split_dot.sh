#!/bin/sh

FN_PASSWD="./passwords/passwords.txt"
FN_PREFIX="passwords_"
DN_OUTPUT="./passwords"

#echo '.'
cat ${FN_PASSWD} | grep "^\." > ${DN_OUTPUT}/${FN_PREFIX}..txt
