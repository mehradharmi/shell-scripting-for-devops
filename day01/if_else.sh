#!/bin/bash

read -p "Enter Candidate Name: " candidate
read -p "Enter $candidate marks: " marks

max_marks=100

percentage=$(((marks * 100) / max_marks))

if [[ "$percentage" -ge 70 ]]; then
    echo "$candidate got First division"

elif [[ "$percentage" -ge 50 ]]; then
    echo "$candidate got Second division"

elif [[ "$percentage" -ge 30 ]]; then
    echo "$candidate got Third division"

else
    echo "$candidate Failed"
fi
