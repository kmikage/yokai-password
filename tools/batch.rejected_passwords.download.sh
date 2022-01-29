#!/bin/bash

./tools/tool.download_rejected_passwords.sh \
 tanzaku_site https://yokai-server-vunudhkwpa-an.a.run.app/api/export/rejected &
./tools/tool.download_rejected_passwords.sh \
 youkaiosugi https://yokai-server-vunudhkwpa-an.a.run.app/api/export/rejected_by_keyword &

wait

exit 0

