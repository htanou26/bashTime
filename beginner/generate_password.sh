#!/bin/bash

# Function to generate a random password
generate_password() {
    local length="$1"
    tr -dc '[:alnum:]' < /dev/urandom | head -c "$length"
}

# Prompt the user for the password length
echo "Enter the desired password length:"
read password_length

# Generate the random password
random_password=$(generate_password "$password_length")

# Display the random password
echo "Random password: $random_password"
