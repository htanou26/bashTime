#!/bin/bash

# Prompt the user for the directory path to start the search
echo "Enter the directory path to start the search:"
read start_directory

# Prompt the user for the file name to search for
echo "Enter the file name to search for:"
read target_file_name

# Use find to search for the specific file in the directory tree
find "$start_directory" -type f -name "$target_file_name"
