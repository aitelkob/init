#!/bin/bash

# Ensure a domain is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <domain>"
  exit 1
fi

domain=$1

echo "Tracing route to $domain. Please identify the first external hop as the device linking local network to the outside world."

traceroute $domain
