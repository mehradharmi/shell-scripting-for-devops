#!/bin/bash

read -p "Enter your Age: " age

if [[ "$age" -lt 12 ]]
then
	echo "Child Ticket price 5$"
elif [ "$age" -ge 12 ] && [ "$age" -le 59 ]
then
	echo "Adult Ticekt price 12$"
else
	echo "Senior Ticket 8$"
fi
