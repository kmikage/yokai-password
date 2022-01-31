#!/bin/sh

# rejected_passwords_original以下のrpasswords_*.txtをマージ・sort -uする

FN_PASSWD="./rejected_passwords/rpasswords.txt"

cat ./rejected_passwords_original/*/rpasswords_*.txt \
| sort -u \
> ${FN_PASSWD}

exit 0

