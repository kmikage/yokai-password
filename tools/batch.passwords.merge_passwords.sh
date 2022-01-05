#!/bin/sh

# passwords_original以下のpasswords_*.txtをマージ・sort -uする

FN_TEMP=$(mktemp)
FN_PASSWD="./passwords/passwords.txt"

find ./passwords_original/ -name 'passwords_*.txt' \
 | while read FN
   do
    cat ${FN} >> ${FN_TEMP}
   done

cat ${FN_TEMP} \
 | sort -u \
  > ${FN_PASSWD}

rm ${FN_TEMP}

exit 0

