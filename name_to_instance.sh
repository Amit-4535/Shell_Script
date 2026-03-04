#!/bin/bash

echo "Enter new hostname:"
read newname

echo "Current hostname is: $(hostname)"

sudo hostnamectl set-hostname "$newname"

echo "Hostname changed to: $newname"
