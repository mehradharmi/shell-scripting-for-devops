#!/bin/bash

read -p "Enter candidate name: " candidate
echo "You entered $candidate"
sudo useradd -m $candidate
echo "New candidate Added"
