#!/bin/bash

# Prompt the user for the directory path to be archived
echo "Enter the directory path to be archived:"
read source_directory

# Check if the source directory exists
if [ -d "$source_directory" ]; then
    # Prompt the user for the archive file name (without extension)
    echo "Enter the name of the archive file (without extension):"
    read archive_name

    # Specify the archive format (tar.gz for gzip compression)
    archive_format="tar.gz"

    # Compress and archive the directory
    tar -czvf "$archive_name.$archive_format" "$source_directory"

    echo "Directory '$source_directory' has been archived as '$archive_name.$archive_format'."
else
    echo "Directory '$source_directory' does not exist."
fi
