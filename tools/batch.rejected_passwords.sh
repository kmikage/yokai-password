#!/bin/bash


# change main branch
git checkout main
git pull

# merge passwords
./tools/batch.rejected_passwords.download.sh
./tools/batch.rejected_passwords.merge.sh
./tools/batch.rejected_passwords.split.sh
./tools/batch.rejected_passwords.git_autocommit.sh
./tools/batch.rejected_passwords.summary.sh 

/tools/batch.rejected_passwords.send_tanzaku.sh >/dev/null 2>/dev/null &
exit 0
