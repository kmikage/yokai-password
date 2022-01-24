#!/bin/bash
cat - \
 | jq . \
 | sed \
  -e 's/"//g' \
  -e 's/^ \{2,\}//g' \
  -e 's/,$//g' \
 | grep -v '^\[' \
 | grep -v '^]' \
 | cat -

