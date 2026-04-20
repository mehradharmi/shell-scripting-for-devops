#!/bin/bash

set -e

REPO="https://github.com/Sree-511/Tooplate.git"
WEBSITE="directory"

echo "********** DEPLOYMENT STARTED **********"

# REMOVE OLD PROJECT IF EXISTS
if [ -d "$WEBSITE" ]; then
	echo "removing old project"
	rm -rf "$WEBSITE"
fi


code_clone() {
	echo "cloning from github"
	git clone "$REPO" "$WEBSITE"
}

install_requirements() {
	sudo apt-get update -y
	sudo apt-get install nginx -y
}

# copy files to nginx directory
copy_files() {
	echo "copying files to nginx directory"
	sudo rm -rf /var/www/html/*
	sudo cp -r "$WEBSITE"/* /var/www/html
}

required_start() {
	sudo systemctl start nginx
	sudo systemctl enable nginx
}

# calling function with error handling
if ! code_clone; then
	echo "already exists"
	cd "$WEBSITE"
fi

install_requirements

copy_files

# set permission
echo "giving permission to nginx directory"
sudo chmod -R 755 /var/www/html

required_start

# VERIFY STEP
echo "Verifying deployment..."

if curl -s http://localhost > /dev/null; then
	echo " Website is running on http://localhost"
else
	echo " Website is not responding"
fi

echo " Open in browser: http://<your-ec2-public-ip>"

echo "********* DEPLOYMENT DONE **********"
