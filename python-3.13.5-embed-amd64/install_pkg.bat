@echo off
cd /d "%~dp0"
REM use embeddable python install pip
python.exe get-pip.py

REM install local portable 
python.exe -m pip install --target=Lib\site-packages pyautogui opencv-python

echo All done! You can now copy the whole folder to any offline PC and use python.exe.
pause
