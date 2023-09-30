#!/bin/bash

# Prompt the user for the directory path
echo "Enter the directory path:"
read directory_path

# Check if the directory exists
if [ -d "$directory_path" ]; then
    # Use du to calculate the sizes of all files in the directory
    # Sort the output in ascending order
    # Display the sizes and filenames
    du -h "$directory_path"/* | sort -n
else
    echo "Directory '$directory_path' does not exist."
fi
