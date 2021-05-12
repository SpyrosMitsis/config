#!/bin/sh
BAT=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)


if [ "$STATUS" = "Charging" ]; then
    printf 
elif [ $BAT -lt 10 ]; then
    printf 
elif [ $BAT -gt 10 ] && [ $BAT -lt 30 ]; then
    printf 
elif [ $BAT -gt 29 ] && [ $BAT -lt 50 ]; then
    printf  
elif [ $BAT -gt 49 ] && [ $BAT -lt 70 ]; then
    printf 
elif [ $BAT -gt 69 ]; then
    printf 
fi

[ "$BAT" = "69" ] && BAT=nice

echo " ${BAT}%"
