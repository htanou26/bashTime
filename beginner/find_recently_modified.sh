#!/bin/bash

# Prompt the user for the directory path
echo "Enter the directory path (or press Enter for the current directory):"
read directory_path

# Check if the user provided a directory path; default to the current directory if not specified
if [ -z "$directory_path" ]; then
    directory_path="."
fi

# Use find to locate files modified in the last 24 hours in the specified directory
find "$directory_path" -type f -mtime -1 -print
