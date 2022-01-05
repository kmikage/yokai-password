#!/bin/sh

# rejected_passwords_original以下のrpasswords_*.txtをマージ・sort -uする

FN_TEMP=$(mktemp)
FN_PASSWD="./rejected_passwords/rpasswords.txt"

find ./rejected_passwords_original/ -name 'rpasswords_*.txt' \
 | while read FN
   do
    cat ${FN} >> ${FN_TEMP}
    echo '' >> ${FN_TEMP}
   done

cat ${FN_TEMP} \
 | sort -u \
 | grep -v '^$' \
  > ${FN_PASSWD}

rm ${FN_TEMP}

exit 0

