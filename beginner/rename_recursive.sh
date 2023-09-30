#!/bin/bash

# Prompt the user for the directory path
echo "Enter the directory path:"
read directory_path

# Check if the directory exists
if [ -d "$directory_path" ]; then
    # Prompt the user for the new base name
    echo "Enter the new base name:"
    read new_base_name
    
    # Use find to locate all files and directories within the specified directory
    # and rename them using the new base name
    find "$directory_path" -depth -execdir rename -e 's/[^a-zA-Z0-9_.]/_/g' -e "s/^/$new_base_name-/" '{}' \;
    
    echo "Renamed all files and directories in $directory_path."
else
    echo "Directory '$directory_path' does not exist."
fi
