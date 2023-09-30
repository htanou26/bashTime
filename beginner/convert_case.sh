#!/bin/bash

# Function to convert text to upper case
to_upper() {
    tr '[:lower:]' '[:upper:]'
}

# Function to convert text to lower case
to_lower() {
    tr '[:upper:]' '[:lower:]'
}

# Prompt the user for the file path
echo "Enter the file path:"
read file_path

# Check if the file exists
if [ -f "$file_path" ]; then
    # Prompt the user to choose upper or lower case conversion
    echo "Choose conversion (U for upper case, L for lower case):"
    read conversion_choice
    
    # Perform the conversion based on user choice
    case $conversion_choice in
        U|u)
            # Convert to upper case and display the result
            to_upper < "$file_path"
            ;;
        L|l)
            # Convert to lower case and display the result
            to_lower < "$file_path"
            ;;
        *)
            echo "Invalid choice. Please enter U or L for conversion."
            ;;
    esac
else
    echo "File '$file_path' does not exist."
fi
