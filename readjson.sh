#!/usr/bin/env bash

function readJson {
    UNAMESTR=$(uname)
    if [[ "$UNAMESTR" == 'Linux' ]]; then
        SED_EXTENDED='-r'
    elif [[ "$UNAMESTR" == 'Darwin' ]]; then
        SED_EXTENDED='-E'
    fi

    VALUE=$(grep -m 1 "\"${2}\"" ${1} | sed ${SED_EXTENDED} 's/^ *//;s/.*: *"//;s/",?//')

    if [ ! "$VALUE" ]; then
        echo "Error: Cannot find \"${2}\" in ${1}" >&2
        exit 1
    else
        echo $VALUE
    fi
}

# Sourcing
source ./readJson.sh

# Usage
readJson file key
readJson set.json set >set.py
