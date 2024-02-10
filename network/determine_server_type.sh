#!/bin/bash

# Check if an IP address is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <IP-address>"
    exit 1
fi

IP=$1

# Trying to connect to common ports to infer server type
echo "Checking HTTP server on port 80..."
curl -I --connect-timeout 5 http://$IP 2>/dev/null

echo "Checking HTTPS server on port 443..."
curl -I --connect-timeout 5 https://$IP 2>/dev/null

# Additional checks can be added here for other server types (e.g., FTP, SSH)

echo "Note: This script provides basic checks. For detailed analysis, consider using a network scanning tool."

