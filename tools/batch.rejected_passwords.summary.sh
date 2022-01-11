#!/bin/bash



PW_CT=` \
 wc -l ./rejected_passwords_original/*/rpasswords_*.txt \
  | tail -n 1 | awk -F' ' '{print $1}' \
  | xargs printf "%'d\n" \
 `
OPW_CT=` \
 wc -l ./rejected_passwords/rpasswords.txt  \
 | awk -F' ' '{print $1}' \
 | xargs printf "%'d\n" \
 `


echo 'ここまで取り込み済'
echo "ハズレパス総数 : ${OPW_CT}"
echo "ユニークなハズレパス : ${PW_CT}"
