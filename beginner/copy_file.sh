#!/bin/bash

# Prompt the user for the source file
echo "Enter the source file:"
read source_file

# Check if the source file exists
if [ -f "$source_file" ]; then
    # Prompt the user for the destination directory
    echo "Enter the destination directory:"
    read destination_directory
    
    # Check if the destination directory exists
    if [ -d "$destination_directory" ]; then
        # Copy the file to the destination directory
        cp "$source_file" "$destination_directory"
        echo "File '$source_file' copied to '$destination_directory'."
    else
        echo "Destination directory '$destination_directory' does not exist."
    fi
else
    echo "Source file '$source_file' does not exist."
fi
