#!/bin/bash
echo "==> NOTE: This script only works if run in your home folder (not on your desktop)"
echo 'deb http://download.opensuse.org/repositories/security:/zeek/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/security:zeek.list
curl -fsSL https://download.opensuse.org/repositories/security:/zeek/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/security_zeek.gpg > /dev/null
sudo apt update && sudo apt install zeek -y
echo 'alias zeek=/opt/zeek/bin/zeek' >> .bashrc
echo 'alias zeek=/opt/zeek/bin/zeek' >> .zshrc
echo "==> Installed Correctly, close and re-open your terminal to access Zeek"