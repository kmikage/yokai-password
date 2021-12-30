#!/bin/sh

FN_PASSWD="./passwords/passwords.txt"
FN_PREFIX="passwords_"
FN_HASH="passwords.sha256"
DN_OUTPUT="./passwords"

#echo 'nmc'
cat ${FN_PASSWD} | grep "^nmc" > ${DN_OUTPUT}/${FN_PREFIX}nmc.txt
 HASH=`cat ${DN_OUTPUT}/${FN_PREFIX}nmc.txt | sha256sum`
 echo "${FN_PREFIX}nmc.txt ${HASH}" >> ${DN_OUTPUT}/${FN_HASH}
