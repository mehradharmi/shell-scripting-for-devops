#!/bin/bash

read -p "Enter candidate name: " candidate
read -p "Enter marks for $candidate: " marks

# Check if the marks are less than 40
if [[ "$marks" -lt 40 ]]; then
    echo "Result: $candidate has Failed."
else
    echo "Result: $candidate has Passed."
fi
