#!/bin/bash

# cereate passwords.zip

pushd ./passwords

FN_PASSWD="./passwords.txt"
FN_PASSWD_ZIP="./passwords.zip"

if [ -f "${FN_PASSWD_ZIP}" ]; then
 rm ${FN_PASSWD_ZIP}
fi

zip -9 ${FN_PASSWD_ZIP} ${FN_PASSWD} > /dev/null 2> /dev/null

popd
