#!/bin/bash
if [ -z "$@" ]
then
	echo "No Path Selected"
else
	args=("$@")
	cd ${args[0]}
	find . -type f -exec chmod 644 {} \;
	find . -type d -exec chmod 755 {} \;
	# find . -exec chown chris:_www {} \;
fi
