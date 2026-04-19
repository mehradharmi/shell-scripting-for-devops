#!/bin/bash

create_directory() {
	mkdir demo
}

if ! create_directory; then
	echo "code exited bcz directory already exists"
	exit 1
fi

echo "This should not work bcz code is interrupted"
