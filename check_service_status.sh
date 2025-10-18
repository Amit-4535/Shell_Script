#!/bin/bash


: << comment

	This script will check the status of the service

comment

SERVICE="Apache2"

if systemctl is-active --quiet "$SERVICE"; then
	echo "$SERVICE is running"
else
	echo "$SERVICE is not running !!! please  install the service !!!!"
	echo "Installing the service now"
	sudo apt-get install apache2 -y
fi


