#!/bin/bash

# Check if a domain name was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <domain_name>"
    echo "Example: $0 example.com"
    exit 1
fi

# Set the external DNS server for the query
# Google's Public DNS server is used as an example
external_dns="8.8.8.8"

# Use nslookup to query the external DNS server
echo "Querying $1 using external DNS server $external_dns..."
nslookup $1 $external_dns
