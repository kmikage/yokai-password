#!/bin/sh

# rejected_passwords_original以下のrpasswords_*.txtをマージ・sort -uする

FN_PASSWD="./rejected_passwords/rpasswords.txt"
FN_PASSWD_ORIGINAL="./rejected_passwords_original/*/rpasswords_*.txt"

cat ${FN_PASSWD_ORIGINAL} \
| sort -u \
| grep '^$' \
> ${FN_PASSWD}

exit 0

