#Linux DNS Change Script

A simple Bash script to change the DNS settings on your system. This script allows you to select a predefined DNS server from a list and updates the `/etc/resolv.conf` file accordingly. It also handles scenarios where the `resolv.conf` file is managed by `systemd-resolved`.

## Features

- Select from a list of predefined DNS servers.
- Automatically detects if `/etc/resolv.conf` is a symlink and unlinks it.
- Creates a new `/etc/resolv.conf` with the selected DNS server.
- Simple and user-friendly interface.

## Supported DNS Servers

1. Shecan: 178.22.122.100
2. 403: 10.202.10.202
3. Electro: 78.157.42.100
4. Radar_Game: 10.202.10.10
5. Google: 8.8.8.8

## Requirements

- Bash shell
- sudo privileges to modify `/etc/resolv.conf`

## Usage

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/RadinPirouz/DNS_Changer/
   cd DNS_Changer
   ```

2. Make the script executable:
   ```bash
   chmod +x dns.sh
   ```

3. Run the script:
   ```bash
   ./dns.sh
   ```

4. Follow the prompts to select your desired DNS server.

## Notes

- This script is intended for Linux systems where `/etc/resolv.conf` is used for DNS resolution.
- Use caution when modifying network settings, especially on production systems.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue to discuss improvements.

