#!/bin/bash

# cereate passwords.zip

pushd ./passwords

FN_PASSWD="passwords.txt"
FN_PASSWD_ZIP="passwords.zip"
FN_PASSWD_GZ="passwords.gz"
FN_PREFIX="passwords_"
FN_HASH="passwords.sha256"
DN_OUTPUT="../passwords"

if [ -f "${FN_PASSWD_ZIP}" ]; then
 rm ${FN_PASSWD_ZIP}
fi

zip -9 ${FN_PASSWD_ZIP} ${FN_PASSWD} > /dev/null 2> /dev/null &
cat ${FN_PASSWD} | gzip > ${FN_PASSWD_GZ} &
wait

HASH=`cat ${DN_OUTPUT}/${FN_PASSWD_ZIP} | sha256sum | awk -F' ' '{print $1}'`
echo "${FN_PASSWD_ZIP} ${HASH}" >> ${DN_OUTPUT}/${FN_HASH}
HASH=`cat ${DN_OUTPUT}/${FN_PASSWD_GZ} | sha256sum | awk -F' ' '{print $1}'`
echo "${FN_PASSWD_GZ} ${HASH}" >> ${DN_OUTPUT}/${FN_HASH}

popd
