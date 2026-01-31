#!/bin/bash


echo "check which all are the services are running"

echo "enter the servicename"

read servicename

if  systemctl is-active --quiet "$servicename"; then
        echo "$servicename is exist"
else
        echo "entered $servicename is not exist"
fi
