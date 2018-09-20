#/bin/bash

AIRPORT_CMD="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

ssid=`${AIRPORT_CMD} -I | awk '/ SSID/ {print substr($0, index($0, $2))}'`

if [ "$ssid" ==  "<HOME_SSID>" ]; then
	networksetup -switchtolocation "Home"
else
	networksetup -switchtolocation "Automatic"
fi

# vim: set ft=lisp : #
