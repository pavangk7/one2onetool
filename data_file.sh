#!/bin/bash
if $BRANCH_NAME == "staging" 
then
    export DATA_FILE='Questions-test.json'
else
    export DATA_FILE='Questions.json'
fi
