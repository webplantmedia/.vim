#!/bin/bash
if [ -z "$@" ]
then
	echo "No Path Selected"
else
	args=("$@")
	cd ${args[0]}
	exuberant-ctags -R --languages=php
fi
