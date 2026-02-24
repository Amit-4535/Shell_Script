#!/bin/bash

FILE="test.txt"

if [ -s "$FILE" ]; then
    echo "File is not empty"
else
    echo "File is empty"
fi



# -s → file size greater than 0
