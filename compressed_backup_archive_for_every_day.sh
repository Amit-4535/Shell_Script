#!/bin/bash

DIR="project"

tar -czvf "${DIR}_$(date +%Y%m%d).tar.gz" "$DIR"

echo "Archive created"


# this will be useful to create the backup of the folder every day in the .tar.gz format
