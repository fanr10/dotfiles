#!/bin/bash

# 爲了判斷一個此時是充電，未連接電源還是連接電源但未充電。

STATE=`upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep state`

STATE1="pending-charge"

if echo "$STATE"|grep $STATE1 > /dev/null ;then
        echo "  􀋩 "
else
        echo ""
fi
