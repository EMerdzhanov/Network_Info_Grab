# Network Information Script

This Bash script prints various details about the local network configuration and status.

## Usage
To print the network information:
 
```
./network_info.sh
```
Running the script will output the following types of details:

* Public IP address
* Private IP address
* MAC address
* Default router IP address
* DNS servers
* Hostname
* Current username
* Open ports

## About
The script uses common CLI tools like ip, ifconfig, lsosf and more to retrieve the network information.

Key techniques used include:

* Command substitutions to assign outputs
* awk, grep, cut to parse command output
* Print formatting for readable output
## Requirements
Linux operating system
Bash shell
CLI tools: curl, ip, ifconfig, lsof, etc.
## License
MIT License - feel free to modify and reuse this code.

## Author
Emil T Merdzhanov