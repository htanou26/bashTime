#!/bin/bash

# Prompt the user for the directory path
echo "Enter the directory path:"
read directory_path

# Check if the directory exists
if [ -d "$directory_path" ]; then
    # Prompt the user for the base name for the renamed files
    echo "Enter the base name for renamed files:"
    read base_name

    # Initialize a counter for numbering
    counter=1

    # Loop through all files in the directory
    for file in "$directory_path"/*; do
        if [ -f "$file" ]; then  # Check if it's a file (not a directory)
            # Extract the filename without path
            filename=$(basename "$file")
            
            # Generate the new filename with sequential numbering
            new_filename="${base_name}_${counter}.txt"  # You can change the file extension as needed
            
            # Rename the file
            mv "$file" "$directory_path/$new_filename"
            
            echo "Renamed: $filename -> $new_filename"
            
            # Increment the counter
            ((counter++))
        fi
    done
else
    echo "Directory '$directory_path' does not exist."
fi
