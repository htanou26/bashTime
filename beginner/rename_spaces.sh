#!/bin/bash

# Prompt the user for the directory path
echo "Enter the directory path:"
read directory_path

# Check if the directory exists
if [ -d "$directory_path" ]; then
    # Loop through all files in the directory
    for file in "$directory_path"/*; do
        if [ -f "$file" ]; then  # Check if it's a file (not a directory)
            # Extract the filename without path
            filename=$(basename "$file")
            
            # Replace spaces with underscores
            new_filename="${filename// /_}"
            
            # Rename the file
            mv "$file" "$directory_path/$new_filename"
            
            echo "Renamed: $filename -> $new_filename"
        fi
    done
else
    echo "Directory '$directory_path' does not exist."
fi
