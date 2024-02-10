#!/bin/bash
#
#
#
#Check if the user provided a domain
if ["$#" -ne 1 ]; then
    echo "Usage: sh trace_route_to_domain.sh <domain>"
    exit 1
fi

domain=$1


#use traceroute to identify newtwork devices to the specific domain 
echo "Tracing route to $domain..."
traceroute $domain
