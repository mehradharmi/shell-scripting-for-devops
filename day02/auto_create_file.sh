#!/bin/bash

read -p "Enter File path:" file

if [[ -f "$file" ]]
then
	echo "File exist"
else
	echo "File not found, Creating..."
	touch "$file"
	echo "File created Successfully"
fi
