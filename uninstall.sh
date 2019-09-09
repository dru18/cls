#! /bin/bash

echo "[*] Uninstalling cls..."
# Remove soft link 'cls' from /bin/ directory.
sudo rm /bin/cls

# Remove 'cls.sh' from /usr/bin/ directory.
sudo rm /usr/bin/cls.sh

echo -e "\n[*] Uninstalling dependencies..."
# purge dependencies.
sudo apt purge cowsay toilet

# autoremove remaining files of dependencies.
sudo apt autoremove
echo -e "\n[+] cls uninstalled."
