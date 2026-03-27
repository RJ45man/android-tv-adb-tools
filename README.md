These tools really work for any Android device.

They're pretty crappy and simplistic.

(Every batch file assumes you have ADB in path as "adb")

1. ADB any command: self explanatory, any ADB command without the cumbersome horror of typing in ADB at the start of your command
2. ADB connect: connects to IP
3. AM start: uses the am start -n command to start an intent which you can find from pm dump
4. PM dump: lists a whole frickton of attributes of a package of your choosing; intents are right at the top. play around, see what hidden menus you can access! am start starts the intents
5. Screenshot: really nice screenshotting tool i struggled to make, finds package name that's on screen and active, sets that as the name, puts it into screenshot folder (incrementing, if
   you screenshot the same app 2x it'll increment file name to _2)
