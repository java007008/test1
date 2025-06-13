#!/bin/bash

echo "== Step 1: Check and install pip if missing =="

# Try to ensure pip is available for current python
py -m ensurepip --default-pip

# Upgrade pip for safety
py -m pip install --upgrade pip

echo "== Step 2: Create offline_packages folder and download dependencies =="

mkdir -p offline_packages
py -m pip download -d offline_packages pyautogui opencv-python

echo "== Step 3: Pack all needed files into one zip =="
zip -r offline_packages.zip offline_packages

echo "== All required files are downloaded and zipped into offline_packages.zip =="
echo "== Copy offline_packages.zip and install_offline.sh to your offline computer. =="
