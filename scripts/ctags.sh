#!/bin/bash
if [ -z "$@" ]
then
	echo "No Path Selected"
else
	args=("$@")
	cd ${args[0]}
	ctags -R --fields=+aimS --languages=php
fi
