#!/bin/bash

# Check if a domain name was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <domain_name>"
    echo "Example: $0 example.com"
    exit 1
fi

# Use whois to get information about the domain
echo "Retrieving whois information for $1..."
whois_info=$(whois "$1")

# List of fields to extract
fields="Domain Name
Registrar
Registrant Organization
Registrant Country
Admin Email
Tech Email"

# Loop through the list and extract information
echo "$fields" | while IFS= read -r field; do
    value=$(echo "$whois_info" | grep -i "$field:" | head -n 1 | cut -d":" -f2- | xargs)
    if [[ ! -z "$value" ]]; then
        echo "$field: $value"
    else
        echo "$field: Not Found"
    fi
done

