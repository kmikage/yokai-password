#!/bin/bash


# change main branch
git checkout main

# merge passwords
./tools/batch.merge_passwords.sh 2>/dev/null

# Reset Hash Table
echo "" > ./passwords/passwords.sha256

./tools/batch.split_default.sh 2> /dev/null &
./tools/batch.split_dot.sh 2> /dev/null &
./tools/batch.split_nmc.sh 2> /dev/null &
./tools/batch.create_zip_archive.sh 2> /dev/null &

wait

./tools/batch.git_autocommit.sh


wait


