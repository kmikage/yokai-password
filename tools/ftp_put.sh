#!/bin/bash

# https://qiita.com/tukiyo3/items/2c073c62b1ca18ef14b9

SERVER=$1
USER=$2
PASS=$3
FP_FILE=$4

DIR=dirname ${FP_FILE}
FILE=basename ${FP_FILE}

pushd ${DIR}

if [ $# -eq 3 ];then
# lsするだけ
    ftp -n <<END
    open $SERVER
    user $USER $PASS
    binary
    prompt
    passive
    cd public_html/yokaipw.ddns.net
    ls
END
    exit 0
fi

# 転送
ftp -n <<END
    open $SERVER
    user $USER $PASS
    binary
    prompt
    passive
    cd public_html/yokaipw.ddns.net
    ls
    mput $FILE
    ls
END

popd

