#!/bin/sh

FN_PASSWD="./conv/passwords.work.txt"
FN_PREFIX="passwords_"
DN_ORIGINAL="./original"
DN_CONV="./conv"

rm ${DN_CONV}/*
cat ${DN_ORIGINAL}/passwords*.txt \
 | sort -u \
 > ${FN_PASSWD}

exit 0
