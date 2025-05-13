#!/bin/bash
sudo apt update
sudo apt install -y fail2ban
sudo cp ../configs/fail2ban/jail.local /etc/fail2ban/jail.local
sudo systemctl restart fail2ban
sudo systemctl enable fail2ban