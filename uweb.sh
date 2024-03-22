#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: incorrect number of arguments"
	exit 1
fi

web_page="/home/alex/dev/alex-free.github.io/$1"

if [ -d "$web_page" ]; then
	cp -rv *.md "$web_page"
	
	if [ -d "images" ]; then
		rm -rf "$web_page"/images
		cp -rv images "$web_page"
	fi

	mv "$web_page"/readme.md "$web_page"/index.md
else
	echo "Error: \""$web_page\"" does not exist!"
fi
