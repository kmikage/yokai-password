#!/bin/sh

FN_PASSWD="./conv/passwords.work.txt" 
FN_PREFIX="passwords_"
FN_HASH="passwords.sha256"
DN_OUTPUT="./conv"

#echo 'nmc'
cat ${FN_PASSWD} | grep "^nmc" > ${DN_OUTPUT}/${FN_PREFIX}nmc.txt
