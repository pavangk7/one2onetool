#!/bin/bash
set -x
IP=$(ip route show |grep -o src.* |cut -f2 -d" ")
#BRANCH_NAME="staging"
# kubernetes sets routes differently -- so we will discover our IP differently
if [[ ${BRANCH_NAME} == "staging" ]]; then
  echo $BRANCH_NAME
  export DATA_FILE="Questions-test.json"
  exec npm start $DATA_FILE
else
  exec npm start
fi
SUBNET=$(echo ${IP} | cut -f1 -d.)
NETWORK=$(echo ${IP} | cut -f3 -d.)

