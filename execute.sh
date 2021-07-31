#!/bin/bash
echo ":: Building ExtractKeyMaster"
./build.sh
echo ":: Pushing to sdcard"
adb push ExtractKeyMaster /sdcard/
adb push jni/shellcode.bin /sdcard/
echo ":: Moving to /data/local/tmp and executing it"
adb shell "su -c 'cp /sdcard/shellcode.bin /data/local/tmp; chmod 777 ./data/local/tmp/shellcode.bin; cp /sdcard/ExtractKeyMaster /data/local/tmp; chmod 700 ./data/local/tmp/ExtractKeyMaster; ./data/local/tmp/ExtractKeyMaster; rm /sdcard/ExtractKeyMaster; rm /sdcard/shellcode.bin'"
