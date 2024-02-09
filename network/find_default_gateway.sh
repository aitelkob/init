#!/bin/bash

# Function to find and print the default gateway
find_default_gateway() {
    # Use 'ip route' on Linux
    if command -v ip &>/dev/null; then
        ip route show default | awk '/default/ {print $3}'
    # Use 'route' on macOS
    elif command -v route &>/dev/null; then
        route -n get default | grep gateway | awk '{print $2}'
    else
        echo "Neither 'ip' nor 'route' commands are available."
        exit 1
    fi
}

# Call the function to print the default gateway
default_gateway=$(find_default_gateway)
if [[ -n $default_gateway ]]; then
    echo "Default Gateway: $default_gateway"
else
    echo "Default gateway could not be determined."
fi

