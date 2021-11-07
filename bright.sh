#!/bin/bash

set -e
file="/sys/devices/pci0000:00/0000:00:08.1/0000:04:00.0/backlight/amdgpu_bl0/brightness"
current=$(cat "$file")
new="$current"

if [ "$1" = "-inc" ]
then
	new=$(( current + $2 ))
fi

if [ "$1" = "-dec" ]
then
new=$(( current - $2 ))
fi

echo "$new" | tee "$file"
