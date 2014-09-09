#!/bin/bash
if [ -z "$@" ]
then
	echo "No Path Selected"
else
	args=("$@")
	cd ${args[0]}
	find . -type f -exec chmod 666 {} \;
	find . -type d -exec chmod 777 {} \;
	# find . -exec chown chris:_www {} \;
fi
