#!/bin/bash

device=$(cat /proc/bus/input/devices | 
awk '
/"ELAN2514:00 04F3:23DD"/{ inside = 1 }
/Handlers=/	{ if(match($0,"event([0-9]+)",group))event = group[1] }
/^$/		{ if(inside && event!="")print "/dev/input/event" event
		inside = 0; event = ""
}')

if [ -n "$device" ]
then sudo evtest --grab "$device" > /dev/null &
fi
