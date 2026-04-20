#!/bin/bash

read -p "Enter A number: " num1
read -p "Enter B number: " num2

read -p "which operation you want: add / sub / mul / div: " op

if [ "$op" = "add" ]; then
	result=$((num1 + num2))
	echo "$num1+$num2=$result"
elif [ "$op" = "sub" ]; then
	result=$((num1 + num2))
	echo "$num1-$num2=$result"

elif [ "$op" = "mul" ]; then
	result=$((num1 * num2))
	echo "$num*$num2=$result"
elif [ "$op" = "div" ]; then
	result=$((num1 / num2))
	echo "$num1/$num2=$result"
else
	echo "invalid operation"
fi
