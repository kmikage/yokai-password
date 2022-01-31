#!/bin/sh

DN_OUTPUT="./rejected_passwords"
FN_PREFIX="rpasswords_"
FN_PASSWD="rpasswords.txt"
FN_HASH="rpasswords.sha256"

# clean checksum file.
echo '' > ${DN_OUTPUT}/${FN_HASH}

# A-Z0-F!-
echo 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!-' \
| fold -w 1 \
| while read c
do
 cat ${DN_OUTPUT}/${FN_PASSWD} | grep "^${c}" >  ${DN_OUTPUT}/${FN_PREFIX}${c}.txt
 HASH=`cat ${DN_OUTPUT}/${FN_PREFIX}${c}.txt | sha256sum | awk -F' ' '{print $1}'`
 echo "${FN_PREFIX}${c}.txt ${HASH}" >> ${DN_OUTPUT}/${FN_HASH}
done

# .
cat ${DN_OUTPUT}/${FN_PASSWD} | grep "^\." > ${DN_OUTPUT}/${FN_PREFIX}..txt
HASH=`cat ${DN_OUTPUT}/${FN_PREFIX}..txt | sha256sum | awk -F' ' '{print $1}'`
echo "${FN_PREFIX}..txt ${HASH}" >> ${DN_OUTPUT}/${FN_HASH}

# nmc
cat ${DN_OUTPUT}/${FN_PASSWD} | grep "^nmc" > ${DN_OUTPUT}/${FN_PREFIX}nmc.txt
HASH=`cat ${DN_OUTPUT}/${FN_PREFIX}nmc.txt | sha256sum | awk -F' ' '{print $1}'`
echo "${FN_PREFIX}nmc.txt ${HASH}" >> ${DN_OUTPUT}/${FN_HASH}

exit 0
