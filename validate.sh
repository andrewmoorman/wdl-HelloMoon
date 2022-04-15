#!/usr/bin/env bash

if [ -z $SCING_HOME ]
then
    echo "Environment variable 'SCING_HOME' not defined."
    exit 1
fi

java -jar ${SCING_HOME}/womtool.jar \
    validate \
    HelloMoon.wdl \
    --inputs ./configs/HelloMoon.inputs.json
