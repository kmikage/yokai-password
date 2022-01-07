#!/bin/sh


DATE=`date "+%Y.%m.%d %H:%M:%S"`
MSG="auto commit. ${DATE}"

git add ./rejected_passwords/rpasswords*
git add ./rejected_passwords_original/*

echo ${MSG} | git commit -F -
git push
