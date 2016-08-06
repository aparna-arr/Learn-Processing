#!/bin/bash

if [ $# -lt 1 ]
then
	echo "Usage: ./prun.sh <project_name>"
	exit 1
fi

proj=$1

processing-java --sketch=`pwd`/$proj --run
