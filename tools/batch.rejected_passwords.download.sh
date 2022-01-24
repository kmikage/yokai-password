#!/bin/bash

git checkout main
git pull

./tools/tool.download_rejected_passwords.sh \
 tanzaku_site https://yokai-server-vunudhkwpa-an.a.run.app/api/export/rejected &
./tools/tool.download_rejected_passwords.sh \
 youkaiosugi https://yokai-server-vunudhkwpa-an.a.run.app/api/export/rejected_by_keyword &

wait

MSG=`echo "Auto Import."`

git add .
echo ${MSG} | commit -m -

git push

exit 0

