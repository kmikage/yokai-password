#!/bin/sh


DATE=`date "+%Y.%m.%d %H:%M:%S"`
MSG="auto commit. ${DATE}"

git add ./passwords/passwords*

echo ${MSG} | git commit -F -
git push
