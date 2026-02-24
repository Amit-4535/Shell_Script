#!/bin/bash

DIR="."

#this below command help us to get the largest file inside the directory
find "$DIR" -type f -exec du -h {} + | sort -rh | head -1

# this below command is used to get the smallest file in the directory
find "$DIR" -type f -exec du -h {} + | sort -h | head -1
