#!/bin/sh

#Exit on error
set -e


device_found=$(adb devices | grep 'device$')
if [ -z "$(adb devices | grep 'device')" ]; then
	echo "Device not found"
	exit 1
fi
echo "device found: "$device_found

echo "Attempting to uninstall previous versions"
adb uninstall org.servalproject

echo "Installing new version"
adb install serval/bin/batphone-debug.apk
