#!/bin/bash
if [ -z "$@" ]
then
	echo "No Path Selected"
else
	args=("$@")
	cd ${args[0]}
	git diff --no-prefix > ~/Downloads/ticket-id.patch
fi
