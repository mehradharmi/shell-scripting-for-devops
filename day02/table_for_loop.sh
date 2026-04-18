#!/bin/bash

read -p "Enter a number: " num

for (( i=1; i<=10; i++ ))
do
	result=$(($num*$i))
	echo "$num * $i: $result"
done
