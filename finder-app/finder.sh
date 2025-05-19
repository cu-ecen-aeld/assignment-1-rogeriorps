#!/bin/bash

filesdir=$1
searchstr=$2

if [ -z "$filesdir" ] || [ -z "$searchstr" ]; then
    echo "Wrong argument"
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "$filesdir doesn't exit"
    exit 1
fi

file_count=$(find "$filesdir" -type f | wc -l)
match_count=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $file_count and the number of matching lines are $match_count"

exit 0

