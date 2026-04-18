#!/bin/bash

echo "Enter File path: "
read file

if [[ -f "$file" ]]
then
	echo "File exist"
else
	echo "File not Found"
fi
