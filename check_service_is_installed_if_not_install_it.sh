#!/bin/bash

set -e

echo "Enter the service name: "
read servicename

# Check if service is installed
if systemctl list-unit-files | grep -q "^$servicename.service"; then
    echo "$servicename is installed"

    # Check if running
    if systemctl is-active --quiet "$servicename"; then
        echo "$servicename is already running"
    else
        echo "$servicename is installed but not running"
        sudo systemctl start "$servicename"
        echo "$servicename started successfully"
    fi
else
    echo "$servicename is not installed"
    echo "Installing $servicename..."
    sudo apt-get update
    sudo apt-get install -y "$servicename"

    sudo systemctl start "$servicename"
    echo "$servicename installed and started successfully"
fi

