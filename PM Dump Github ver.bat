@echo off
set /p userpath=Where would you like the files to be saved? (w/o spaces, no \ at end. files will be saved in subdir pm_dump)
mkdir %userpath%\pm_dump\
:q
set /p userInput=pm dump (android package name, ex com.android.settings): 
"C:\Program Files\platform-tools\adb.exe" shell pm dump %userInput% > %userpath%\pm_dump\dump_%userInput%.txt
start notepad %userpath%\pm_dump\dump_%userInput%.txt
goto q