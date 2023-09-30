#!/bin/bash

# Prompt the user for the directory path
echo "Enter the directory path:"
read directory_path

# Check if the directory exists
if [ -d "$directory_path" ]; then
    # Prompt the user for the file extension to delete
    echo "Enter the file extension to delete (e.g., txt, jpg):"
    read file_extension
    
    # Use the find command to locate files with the specified extension
    find "$directory_path" -type f -name "*.$file_extension" -exec rm {} \;
    
    echo "Deleted all .$file_extension files in $directory_path."
else
    echo "Directory '$directory_path' does not exist."
fi
