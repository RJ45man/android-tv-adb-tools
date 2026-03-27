@echo off
:q
set /p userInput=connect to device ip: 
adb connect %userInput%
exit
