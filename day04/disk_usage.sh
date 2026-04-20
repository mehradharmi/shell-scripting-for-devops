#!/bin/bash

threshold=80
usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')


echo "Disk usage: $usage"

if [ "$usage" -gt "$threshold" ]; then
	echo "disk high usage, cleaning logs.."
	sudo find /var/log -type f -mtime +7 -delete
	echo "cleanup done"
else
	echo "Normal usage"
fi
