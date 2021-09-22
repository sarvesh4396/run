#!/usr/bin/env python3

import json
with open('set.json') as jfile:
    data = json.load(jfile).get('set')
    with open('set.py','w') as pyfile:
        pyfile.write(data)
