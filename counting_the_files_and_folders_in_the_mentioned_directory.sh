#!/bin/bash

DIR="."

COUNT=$(ls -1 "$DIR" | wc -l)

echo "Total files: $COUNT"
