#!/bin/bash

device_name="$1"

ENABLED=$(xinput list-props "$device_name" | awk '/Device Enabled/ {print $NF}')

if [ "$ENABLED" -eq "1" ]; then
	xinput disable "$device_name"
else
	xinput enable "$device_name"
fi
