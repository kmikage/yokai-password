#!/bin/bash
DIR_WORK=$(mktemp -d)
DIR_BASE=`pwd`
DIR_RPASSWD="${DIR_BASE}/rejected_passwords_original"
DATE=`date '+%Y%m%d-%H%M'`
CFG_PREFIX_RPW="rpasswords_"

CFG_ID=${1}
CFG_URL=${2}

if [ "${CFG_ID}" = "" ]; then
 echo 'tool.rejected_passwords.download.sh [ID] [URL]'
 exit 1
fi

if [ "${CFG_URL}" = "" ]; then
 echo 'tool.rejected_passwords.download.sh [ID] [URL]'
 exit 1
fi

FLG_ERR=`echo ${CFG_ID} | grep '^http' | wc -l`
if [ "${FLG_ERR}" != "0" ]; then
 echo 'tool.rejected_passwords.download.sh [ID] [URL]'
 echo 'Using a URL in first option??'
 exit 1
fi
mkdir -p ${DIR_RPASSWD}/api-${CFG_ID}/

# Download Current json 
curl -s ${CFG_URL} \
 > ${DIR_WORK}/${CFG_PREFIX_RPW}api.json 

# Convert
cat ${DIR_WORK}/${CFG_PREFIX_RPW}api.json \
 | ${DIR_BASE}/tools/tool.json_2_password.sh \
 | sort -u \
 > ${DIR_WORK}/${CFG_PREFIX_RPW}api.txt

# get Original passwords
cat ${DIR_RPASSWD}/api-${CFG_ID}/${CFG_PREFIX_RPW}*.txt \
 | sort -u \
 > ${DIR_WORK}/${CFG_PREFIX_RPW}orig.txt

# Diff
diff \
 ${DIR_WORK}/${CFG_PREFIX_RPW}api.txt \
 ${DIR_WORK}/${CFG_PREFIX_RPW}orig.txt \
 | grep '^< ' \
 | sed -e 's/^< //g' \
 > ${DIR_WORK}/${CFG_PREFIX_RPW}${DATE}.diff

# Check Update
FLG=`cat ${DIR_WORK}/${CFG_PREFIX_RPW}${DATE}.diff | wc -l`

# if Updated
if [ "${FLG}" != "0" ]; then
 # make password file
 cat ${DIR_WORK}/${CFG_PREFIX_RPW}${DATE}.diff \
 | sort -u \
 > ${DIR_WORK}/${CFG_PREFIX_RPW}${DATE}.txt

 # copy
 cp -prv ${DIR_WORK}/${CFG_PREFIX_RPW}${DATE}.txt \
  ${DIR_RPASSWD}/api-${CFG_ID}/${CFG_PREFIX_RPW}${DATE}.txt
fi

rm -rf ${DIR_WORK}
exit 0
