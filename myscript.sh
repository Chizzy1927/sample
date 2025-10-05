#!/bin/bash

FILE=$1

if [ -z "$FILE" ]; then
  echo "Usage: $0 filename"
  exit 1
fi
> "$FILE"

# Loop through files in the shellscript directory
for f in *.sh; do
  echo "$f" >> "$FILE"
done

# Display contents
cat "$FILE"
