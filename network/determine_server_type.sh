#!/bin/bash

# Check if an IP address is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <IP-address>"
    exit 1
fi

IP=$1

# Function to check a specific port using curl
check_server() {
    local protocol=$1
    local port=$2
    echo "Checking $protocol server on port $port..."
    response=$(curl -I --connect-timeout 5 "${protocol}://${IP}" 2>/dev/null | head -n 1)
    if [[ -n $response ]]; then
        echo -e "Response from $protocol server on port $port:\n$response"
    else
        echo "No response from $protocol server on port $port."
    fi
}

# Trying to connect to common ports to infer server type
check_server "HTTP" 80
check_server "HTTPS" 443

# Additional checks can be added here for other server types (e.g., FTP, SSH)

echo "Note: This script provides basic checks. For detailed analysis, consider using a network scanning tool."

