#!/bin/bash

# Check if a domain name was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <domain_name>"
    echo "Example: $0 example.com"
    exit 1
fi

domain=$1

# Function to use dig if available, otherwise fall back to nslookup
find_external_ip() {
    if command -v dig &>/dev/null; then
        dig +short "$domain" | grep -E '^[0-9.]+$' | head -n 1
    elif command -v nslookup &>/dev/null; then
        nslookup "$domain" | awk '/^Address: / { print $2 }' | head -n 2 | tail -n 1
    else
        echo "Neither dig nor nslookup command is available."
        return 1
    fi
}

# Call the function and print the result
external_ip=$(find_external_ip)
if [[ -n $external_ip ]]; then
    echo "External IP for $domain: $external_ip"
else
    echo "Failed to find the external IP for $domain."
fi
