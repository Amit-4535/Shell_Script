#!/bin/bash

DIR="."
LIMIT=10

COUNT=$(find "$DIR" -type f | wc -l)

if [ "$COUNT" -gt "$LIMIT" ]; then
    echo "Warning: File count exceeded limit!"
else
    echo "File count is under control"
fi
