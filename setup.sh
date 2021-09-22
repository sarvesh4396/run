#!/usr/bin/env bash

# Get file
curl --request GET "https://getpantry.cloud/apiv1/pantry/$PANTRYCLOUD_API/basket/set" \
    --header 'Content-Type: application/json' \
    --data-raw '' >set.json

# Setting set.py
python makefile.py

# Running File
python set.py
