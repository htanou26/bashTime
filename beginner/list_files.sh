#!/bin/bash

# Prompt the user for the directory path
echo "Enter the directory path:"
read directory_path

# Check if the directory exists
if [ -d "$directory_path" ]; then
    # List all files in the directory
    echo "Files in $directory_path:"
    ls -p "$directory_path" | grep -v /   # List only files, not directories
else
    echo "Directory '$directory_path' does not exist."
fi
