# Network Segmentation

- **DMZ Network (`dmz-net`)**: Hosts VPN, Bastion, WAF, and Honeypot. Exposed to external traffic.
- **Internal Network (`internal-net`)**: Hosts internal servers. Isolated from external access.
- **Bastion**: Connects to both networks to allow controlled access from DMZ to internal servers.