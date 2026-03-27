@echo off
setlocal EnableDelayedExpansion
set /p userpath=Where would you like the files to be saved? (w/o spaces, no \ at end. files will be saved in subdir screenshots)
mkdir %userpath%\screenshots\

:screenshot

set /p input=S to screenshot: 
if "%input%"=="s" do goto start

:start

for /f "tokens=2 delims=/" %%A in ('adb shell dumpsys window ^| findstr /i "mCurrentFocus"') do (
    set app=%%A
)

for /f "tokens=1 delims=}" %%B in ("%app%") do set appfixed=%%B

set n=1

:loop

set "name=!appfixed!_!n!"


if exist "%userpath%\screenshots\!name!.png" (
    set /a n+=1
    goto loop
)

adb exec-out screencap -p "/sdcard/!name!.png"

adb pull -a "/sdcard/!name!.png" %userpath%\screenshots\

adb shell rm "/sdcard/!name!.png"

goto screenshot