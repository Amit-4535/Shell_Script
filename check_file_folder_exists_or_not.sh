

#!/bin/bash

: << comment
# setting the variable as FILE and passing the value of the filename which we want to find

FILE="demo.txt"

if [ -f "$FILE" ]; then
	echo "the $FILE is exists"
else
	echo "$FILE is not exists"
fi

comment

: << comment
DIRECTORY="/home/ubuntu/Shell_Script/Amit"

if [ -d "$DIRECTORY" ]; then
	echo "$DIRECTORY is exists"
else
	echo "$DIRECTORY is not exists"
fi

comment


# we already used -f for regular file then -d for the directory.. now let us use the -e which means any existence (True if file OR directory OR symlink exists)


FILE="test.txt"

if [ -e $FILE ]; then
	echo "$FILE is exists"
else
	echo "$FILE is not exists"
fi


: <<comment

Difference Between -f and -e

| Option | Meaning                                     |
| ------ | ------------------------------------------- |
| `-f`   | True if regular file exists                 |
| `-d`   | True if directory exists                    |
| `-e`   | True if file OR directory OR symlink exists |

comment
