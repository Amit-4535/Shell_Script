
#!/bin/bash

DIR="/home/ubuntu/Shell_script/Amitdemo"

if [ ! -d "$DIR" ]; then
	echo "$DIR is not exists"
	mkdir -p $DIR
	echo "$DIR is created successfully"
else
	echo "$DIR is already exists"
fi

