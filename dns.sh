#!/bin/bash

# Define an associative array for DNS servers with their names
declare -A dns_servers=(
  [1]="Shecan:178.22.122.100"
  [2]="403:10.202.10.202"
  [3]="Electro:78.157.42.100"
  [4]="Radar_Game:10.202.10.10"
  [5]="Google:8.8.8.8"
  [6]="Begzar:185.55.226.26"
)

# Display options
echo "Select a target DNS:"
for key in "${!dns_servers[@]}"; do
  echo "$key. ${dns_servers[$key]%%:*}"  # Display only the name
done

# Read user input
read -p "Enter the number corresponding to your choice: " input

# Check if input is valid
if [[ $input =~ ^[1-6]$ ]]; then
  # Extract the corresponding DNS address
  dns_address="${dns_servers[$input]#*:}"
  
  # Check if resolv.conf is managed by systemd
  if [ -L /etc/resolv.conf ]; then
    echo "Detected /etc/resolv.conf is a symlink. Unlinking..."
    sudo unlink /etc/resolv.conf
  fi

  # Create a new resolv.conf file
  echo "nameserver $dns_address" | sudo tee /etc/resolv.conf > /dev/null
  echo "DNS server set to ${dns_servers[$input]}"
else
  echo "Invalid input. Please enter a number between 1 and 5."
fi

