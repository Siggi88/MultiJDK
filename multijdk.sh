#!/bin/bash

DEFAULT_JDK=17

if [ -z $JDK ]; then
	# if JDK is not specified in environment variable
	# use the default one set here
	JDK=$DEFAULT_JDK
fi

JDK_NAME=$(ls /usr/local/jdks | egrep "^jdk(-|1.)$JDK" | head -1)
if [ -z $JDK_NAME ]; then
	echo "Could not find JDK matching version $JDK"
	exit 1
fi

JDK_PATH=/usr/local/jdks/$JDK_NAME/bin
export PATH=$JDK_PATH:$PATH
