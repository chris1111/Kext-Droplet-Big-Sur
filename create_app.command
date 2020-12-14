#!/bin/sh
# Copyright (c) 2019, 2020 chris1111 All Rights reserved.
apptitle="Kext-Droplet"
version="1.0"
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
echo "-------------------------------------"
# Declare some VARS
APP_NAME=Kext-Droplet
# Delete the app if exist
if [ -d "${3}./Kext-Droplet.app" ]; then
	rm -rf "${3}./Kext-Droplet.app"
fi
mkdir -vp ${APP_NAME}.app/Contents/MacOS ${APP_NAME}.app/Contents/Resources 
# Create the folders.
APP_NAME=Kext-Droplet.app
# Copy Resources to the right place
cp -r Resources/AppSettings.plist "$APP_NAME"/Contents/Resources
cp -r Resources/Credits.html "$APP_NAME"/Contents/Resources
cp -r Resources/MainMenu.nib "$APP_NAME"/Contents/Resources
cp -rp Resources/script "$APP_NAME"/Contents/Resources
cp -rp MacOS/Kext-Droplet "$APP_NAME"/Contents/MacOS
cp -rp Info.plist "$APP_NAME"/Contents
cp -r Resources/AppIcon.icns "$APP_NAME"/Contents/Resources
Sleep 1
# Test open app
open ${APP_NAME}

