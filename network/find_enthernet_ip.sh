#!/bin/bash
#


#Define common Ethernet interface names for Linux and macOs 

# Check if an interface was provided as an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <interface>"
  echo "Example: $0 eth0"
  exit 1
fi

# Assign the provided interface name to a variable
interface=$1

# Attempt to find and display the IP address for the specified interface
ip=$(ifconfig $interface 2>/dev/null | awk '/inet / {print $2}')

if [[ -n $ip ]]; then
  echo "IP address for $interface: $ip"
else
  echo "No IP address found for interface $interface, or interface does not exist."
fi
