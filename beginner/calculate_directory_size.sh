#!/bin/bash

# Prompt the user for the directory path
echo "Enter the directory path:"
read directory_path

# Check if the directory exists
if [ -d "$directory_path" ]; then
    # Use du to calculate the total size of the directory
    total_size=$(du -sh "$directory_path" | awk '{print $1}')
    
    echo "Total size of '$directory_path' and its contents: $total_size"
else
    echo "Directory '$directory_path' does not exist."
fi
