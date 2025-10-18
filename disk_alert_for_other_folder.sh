#!/bin/bash


: << comment

	this script will tell us the usage of the setting folder and if its more than the threshold, then this will give us the alert

comment

THRESHOLD=20
USAGE=$(df -h /home/ubuntu/Shell_Script | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
	echo "the current ud=sage is : $USAGE is more than the setting threshold :$THRESHOLD"

fi
