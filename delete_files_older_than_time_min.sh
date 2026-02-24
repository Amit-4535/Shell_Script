
#!/bin/bash


DIR="/home/ubuntu/Shell_Script"

find "$DIR" -type f -name "*.txt" -mmin +5 -exec rm {} \;

echo "older files are deleted of .txt extensions"


: << comment

here we are can use for -mmin for hour and for the minutes
for days we can use -mtime

+5 mins -- the file is older than 5 min
-5 mins -- means the file is not older than the 5 min

comment
