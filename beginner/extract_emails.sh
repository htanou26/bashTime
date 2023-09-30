#!/bin/bash

# Prompt the user for the file path
echo "Enter the file path containing email addresses:"
read file_path

# Check if the file exists
if [ -f "$file_path" ]; then
    # Use grep with a regular expression to extract email addresses
    email_addresses=$(grep -Eo '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\b' "$file_path")
    
    # Display the extracted email addresses
    echo "Extracted email addresses:"
    echo "$email_addresses"
else
    echo "File '$file_path' does not exist."
fi
