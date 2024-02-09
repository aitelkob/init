#!/bin/bash

# Function to find and echo the default network interface
find_active_interface() {
    # Check if 'ip' command is available
    if command -v ip &>/dev/null; then
        # Use 'ip route' to find the default route and extract the interface
        ip route get 1.1.1.1 | grep -oP 'dev \K\S+' | head -n1
    elif command -v route &>/dev/null; then
        # Fallback to 'route' command for macOS or systems without 'ip'
        route get 1.1.1.1 | grep interface: | awk '{print $2}'
    else
        echo "Neither 'ip' nor 'route' command is available. Unable to determine the active interface."
        exit 1
    fi
}

# Execute the function and capture the output
active_interface=$(find_active_interface)

# Check if we found an active interface
if [[ -n $active_interface ]]; then
    echo "$active_interface"
else
    echo "0"
fi
