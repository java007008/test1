#!/bin/bash

echo "== Step 1: Unpack offline_packages.zip =="
unzip -o offline_packages.zip

echo "== Step 2: Install pip using Python's ensurepip module =="
py -m ensurepip --default-pip

echo "== Step 3: Upgrade pip (recommended) =="
py -m pip install --upgrade pip

echo "== Step 4: Install pyautogui and opencv-python from local folder =="
py -m pip install --no-index --find-links=offline_packages pyautogui opencv-python

echo "== Step 5: Installation finished =="
echo "If you see 'Successfully installed' messages above, everything is OK."
