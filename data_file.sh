#!/bin/bash
echo "Enter password"
export BRANCH="staging"
if [ $BRANCH="staging" ]
then
  export DATA_FILE="Questions-test.json"
else
  echo "The password is incorrect, try again."
fi
