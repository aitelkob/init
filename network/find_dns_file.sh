#!/bin/bash

echo "Checking the system..."

# Detect operating system
OS="$(uname)"

if [ "$OS" == "Linux" ]; then
    echo "On Linux, the DNS server IP addresses are usually listed in /etc/resolv.conf."
    echo "File path: /etc/resolv.conf"
elif [ "$OS" == "Darwin" ]; then
    echo "On macOS, DNS configurations can be dynamically managed and accessed via scutil."
    echo "For static configurations, you may find DNS server IP addresses in /etc/resolv.conf."
    echo "File path: /etc/resolv.conf"
    echo "To view dynamic DNS configurations, use the command: scutil --dns"
else
    echo "Unsupported operating system."
fi
