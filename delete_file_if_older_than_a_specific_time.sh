#!/bin/bash

FILE="test.txt"
MINUTES=10

if [ -f "$FILE" ]; then
    if find "$FILE" -mmin +$MINUTES | grep -q "$FILE"; then
        rm -f "$FILE"
        echo "$FILE deleted (older than $MINUTES minutes)"
    else
        echo "$FILE is not older than $MINUTES minutes"
    fi
else
    echo "File does not exist"
fi
