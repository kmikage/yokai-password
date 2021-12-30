#!/bin/sh

FN_PASSWD="./passwords/passwords.txt"
FN_PREFIX="passwords_"
FN_HASH_SUFFIX=".md5"
FN_HASH="passwords.sha256"
DN_OUTPUT="./passwords"

echo 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!-' \
| fold -w 1 \
| while read c
do
 #echo ${c}
 cat ${FN_PASSWD} | grep "^${c}" >  ${DN_OUTPUT}/${FN_PREFIX}${c}.txt
 HASH=`cat ${DN_OUTPUT}/${FN_PREFIX}${c}.txt | sha256sum`
 echo "${FN_PREFIX}${c}.txt ${HASH}" >> ${DN_OUTPUT}/${FN_HASH}
done

exit 0
