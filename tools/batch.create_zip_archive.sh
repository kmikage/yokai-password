#!/bin/bash

# cereate passwords.zip

pushd ./passwords

FN_PASSWD="./passwords.txt"
FN_PASSWD_ZIP="./passwords.zip"
FN_PASSWD_GZ="./passwords.gz"

if [ -f "${FN_PASSWD_ZIP}" ]; then
 rm ${FN_PASSWD_ZIP}
fi

zip -9 ${FN_PASSWD_ZIP} ${FN_PASSWD} > /dev/null 2> /dev/null &
cat ${FN_PASSWD} | gzip > ${FN_PASSWD_GZ} &

wait

popd
