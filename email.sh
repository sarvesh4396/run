#!/usr/bin/env bash

cd $HOME || exit
cd pastebin/automation || exit
python3 sendmail.py
