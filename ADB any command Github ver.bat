@echo off
:q
set /p userInput=any command (ADB): 
adb %userInput%
goto q
