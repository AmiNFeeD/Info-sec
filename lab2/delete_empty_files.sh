#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

dir=$1

if [ ! -d "$dir" ]; then
    echo "Error: $dir is not a directory"
    exit 1
fi

empty_files=$(find "$dir" -type f -empty)

if [ -z "$empty_files" ]; then
    echo "No empty files found in $dir"
else
    echo "Deleting empty files:"
    echo "$empty_files"
    find "$dir" -type f -empty -delete
    echo "Empty files deleted."
fi
