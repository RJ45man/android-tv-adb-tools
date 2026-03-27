@echo off
:q
set /p userInput=am start -n (start intent, ex com.mediatek.wwtv.webview/.MainActivity): 
adb shell am start -n %userInput%
goto q