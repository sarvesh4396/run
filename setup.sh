#!/usr/bin/env bash

# Installing jq
apt-get install jq -y

# Get file
curl --request GET "https://getpantry.cloud/apiv1/pantry/$PANTRYCLOUD_API/basket/set" \
    --header 'Content-Type: application/json' \
    --data-raw '' >set.json

# Setting set.py
jq .set set.json >set.py

# Running File
python set.py
