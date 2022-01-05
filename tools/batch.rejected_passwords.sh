#!/bin/bash


# change main branch
#git checkout main
#git pull

# merge passwords
./tools/batch.rejected_passwords.merge_passwords.sh 2>/dev/null

# Reset Hash Table
echo '' > ./rejected_passwords/rpasswords.sha256

./tools/batch.rejected_passwords.split_default.sh 2> /dev/null &
#./tools/batch.rejected_passwords.create_zip_archive.sh 2> /dev/null &

wait

#./tools/batch.passwords.git_autocommit.sh

wait

exit 0
