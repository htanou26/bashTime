#!/bin/bash

# Display the kernel version
echo "Kernel version:"
uname -r

# Display available memory information
echo -e "\nAvailable Memory:"
free -h

# Display disk usage information
echo -e "\nDisk Usage:"
df -h
