#!/bin/bash

CFG_URL="https://yokai-server-vunudhkwpa-an.a.run.app/update"
CFG_KEY="rejected"

DIR_RPW="./rejected_passwords"
DIR_RPW_ORIG="./rejected_passwords_original"

FN_WORK="$(mktemp)"
FN_PASSWD="$(mktemp)"
FN_HASH="${DIR_RPW}/rpasswords.tanzaku.sha256"

# Pickup non API Passwords
pushd ${DIR_RPW_ORIG}
 DIRS=` \
  ls -l \
  | grep '^d' \
  | grep -v 'api-' \
  | awk -F' ' '{print $9}' \
 `
popd

# Init Temp File
echo "" > ${FN_WORK}

# Collection Paswords
IFS=" "
while read DIR
do
 # echo ${DIR}
 cat ${DIR_RPW_ORIG}/${DIR}/rpasswords_*.txt >> ${FN_WORK}
done << _EOL_
${DIRS}
_EOL_


cat ${FN_WORK} | sort -u > ${FN_PASSWD}

HASH_PASSWD=`cat ${FN_PASSWD} | sha256sum | awk -F" " '{print $1}'`

if [ -e "${FN_HASH}" ]; then
 HASH_ORIG=`cat ${FN_HASH}`
else
 HASH_ORIG=""
fi


# Debug
#echo ${HASH_PASSWD}
#cat ${FN_PASSWD} | wc -l

# Update Prosess
if [ "${HASH_PASSWD}" != "${HASH_ORIG}" ];then
 # Update Hash File
 echo ${HASH_PASSWD} > ${FN_HASH}

 # send new password file.
 curl -X POST -F ${CFG_KEY}=@${FN_PASSWD} ${CFG_URL}
 # echo $?
fi


rm ${FN_WORK}
rm ${FN_PASSWD}

exit
