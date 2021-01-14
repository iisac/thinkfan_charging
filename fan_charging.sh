#!/bin/bash

while true
do
MOREF=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | awk '{print $2;}'`
pkill -9 -e -f thinkfan
rm /run/thinkfan.pid
	
if	[[ "$MOREF" == "discharging" ]]; then
		thinkfan
elif	[[ "$MOREF" == "fully-charged" ]]; then	
		thinkfan
elif	[[ "$MOREF" == "charging" ]]; then
		thinkfan -c /etc/thinkfan_charging.conf
else
		thinkfan
fi
sleep 60
done
