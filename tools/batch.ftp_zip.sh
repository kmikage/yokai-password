#!/bin/bash

if [ -e "./tools/config.ftp_html.sh" ]; then
 . ./tools/config.ftp_html.sh 
else
 echo "no config file."
 exit 1
fi

CMD_FTP="./tools/tool.ftp_zip_put.sh "


${CMD_FTP} ${CFG_FTP_SV} ${CFG_FTP_ID} ${CFG_FTP_PW} ./passwords/passwords.zip
${CMD_FTP} ${CFG_FTP_SV} ${CFG_FTP_ID} ${CFG_FTP_PW} ./passwords/passwords.gz
${CMD_FTP} ${CFG_FTP_SV} ${CFG_FTP_ID} ${CFG_FTP_PW} ./passwords/passwords.sha256


exit 0
