#!/bin/sh

FN_PASSWD="./conv/passwords.work.txt"
FN_PREFIX="passwords_"
DN_OUTPUT="./conv"

echo 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!-' \
| fold -w 1 \
| while read c
do
 #echo ${c}
 cat ${FN_PASSWD} | grep "^${c}" >  ${DN_OUTPUT}/${FN_PREFIX}${c}.txt
done

exit 0
