#!/bin/bash


: << comment

	This script will help to check the disk space and once its reach to the threshold then this will print the  alert usage message

comment

THRESHOLD=20  # setting threshold as 20%
USAGE=$(df -h / | grep '/' | awk '{print $5}' | sed 's/%//')

# setting criteria here for the root / directory

if [ "$USAGE" -gt "$THRESHOLD" ]; then
	echo "disk usage is above $THRESHOLD : current usage is $USAGE"

fi
	

