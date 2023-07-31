#!/bin/bash

echo "=========================="
echo ""

# Get public IP
public_ip=$(curl -s ifconfig.me)
echo "Public IP: $public_ip"

# Get IPv4 private IP
ipv4_private_ip=$(hostname -I | awk '{print $1}')
echo "Private IPv4 IP: $ipv4_private_ip"

# Get MAC Address
mac_address=$(ip link show eth0 | awk '/ether/ {print $2}')
echo "MAC Address: $mac_address"

# Get Router IP
router_ip=$(ip route | grep default | awk '{print $3}')
echo "Router IP: $router_ip"

# Get DNS Information
dns_info=$(cat /etc/resolv.conf | grep nameserver)
echo "DNS Information: $dns_info"
echo ""

# Get Hostname
hostname=$(hostname)
echo "Hostname: $hostname"

# Get Current Users
user=$(whoami)
echo "User: $user"
echo ""

# Open TCP and UDP ports
open_ports=$(sudo ss -tunapl | awk '{print $5}' | cut -d ':' -f 2 | sort | uniq)
echo "Open Ports: $open_ports"
echo ""
echo "=========================="

# End of script