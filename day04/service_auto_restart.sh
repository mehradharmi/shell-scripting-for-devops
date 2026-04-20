#!/bin/bash

services="nginx"

if systemctl is-active --quiet "$services"; then
	echo "$services is running"
else
	echo "$services is not running, starting $services..."
	sudo systemctl restart $services

	#verify
	if systemctl is-active --quiet "$services"; then
		echo "$services restarted successfully"
	else
		echo "there is problem with $services restart"
	fi
fi
