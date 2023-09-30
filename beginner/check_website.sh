#!/bin/bash

# Prompt the user for the website URL
echo "Enter the website URL to check (e.g., https://www.example.com):"
read website_url

# Use curl to send an HTTP GET request to the website
response_code=$(curl -Is --max-time 10 "$website_url" | head -n 1 | cut -d ' ' -f 2)

# Check the HTTP response code to determine if the website is online
if [ "$response_code" == "200" ]; then
    echo "The website is online."
else
    echo "The website is not online (HTTP response code: $response_code)."
fi
