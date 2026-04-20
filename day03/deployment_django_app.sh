#!/bin/bash

set -e

code_clone() {
	echo "Cloning the Django app.."
	if [ ! -d "django-notes-app" ]; then
		git clone https://github.com/LondheShubham153/django-notes-app.git
	fi
	cd django-notes-app
}

install_requirements() {
	echo "installing dependencies.."
	sudo apt-get update
	sudo apt-get install docker.io nginx -y
}

required_restart() {
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl restart docker
}

deploy() {
	echo "Building Docker image..."
	docker build -t notes-app .

	echo "Removing old container if exists..."
	docker rm -f notes-container 2>/dev/null

	echo "Running container..."
	docker run -d -p 8000:8000 --name notes-container notes-app:latest

	echo "Container status:"
	docker ps
}

echo "************ DEPLOYMENT STARTED ***********"

code_clone
install_requirements
required_restart
deploy

echo "************ DEPLOYMENT DONE ***********"
