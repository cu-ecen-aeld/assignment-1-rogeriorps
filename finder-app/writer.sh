#!/bin/bash

writefile=$1
writestr=$2

if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Error: Missing arguments. Usage: $0 <writefile> <writestr>"
    exit 1
fi

mkdir -p "$(dirname "$writefile")"

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Error: Failed to write to $writefile"
    exit 1
fi

exit 0

