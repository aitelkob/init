#!/bin/bash

# Check if 'ifconfig' command is available
if command -v ifconfig &>/dev/null; then
    # Use 'ifconfig' to list all network interfaces
    ifconfig | cut -d ' ' -f1 | awk 'NF'
else
    echo "ifconfig command not found. Please ensure it is installed and available in your PATH."
fi
