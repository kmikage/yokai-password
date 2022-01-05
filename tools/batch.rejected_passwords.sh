#!/bin/bash


# change main branch
git checkout main
git pull

# merge passwords
./tools/batch.passwords.merge_passwords.sh 2>/dev/null

# Reset Hash Table
echo '' > ./passwords/passwords.sha256

./tools/batch.passwords.split_default.sh 2> /dev/null &
./tools/batch.passwords.split_dot.sh 2> /dev/null &
./tools/batch.passwords.split_nmc.sh 2> /dev/null &
./tools/batch.passwords.create_zip_archive.sh 2> /dev/null &

wait

./tools/batch.passwords.git_autocommit.sh

wait

exit 0
