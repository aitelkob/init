#!/bin/bash

# Check if a URL was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <URL>"
    echo "Example: $0 example.com"
    exit 1
fi

# Use nslookup to query the DNS server for the provided URL
nslookup_result=$(nslookup $1)

# Extract and display the DNS server's IP address
echo "$nslookup_result" | grep 'Server:' | awk '{print $2}'

# Optionally, display the resolved IP address of the URL
echo "Resolved IP for $1:"
echo "$nslookup_result" | grep 'Address:' | tail -n +2 | awk '{print $2}'

