#!/bin/bash

# Prompt the user for the file path
echo "Enter the file path:"
read file_path

# Check if the file exists
if [ -f "$file_path" ]; then
    # Use wc to count the number of lines in the file
    line_count=$(wc -l < "$file_path")
    
    echo "The file '$file_path' contains $line_count lines."
else
    echo "File '$file_path' does not exist."
fi
