#!/bin/bash

if [ -e "./tools/config.ftp_html.sh" ]; then
 . ./tools/config.ftp_html.sh 
else
 echo "no config file."
 exit 1
fi

DIR_WORK=$(mktemp -d)

cat ${DIR_HTML}/index.utf8.html | nkf -s > ${DIR_WORK}/index.html
cat ${DIR_HTML}/style.css | nkf -s > ${DIR_WORK}/style.css

${CMD_FTP} ${CFG_FTP_SV} ${CFG_FTP_ID} ${CFG_FTP_PW} ${DIR_WORK}/index.html
${CMD_FTP} ${CFG_FTP_SV} ${CFG_FTP_ID} ${CFG_FTP_PW} ${DIR_WORK}/style.css

rm -rf ${DIR_WORK}

exit 0
