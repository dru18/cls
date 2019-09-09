#! /bin/bash

echo "[*] Uninstalling cls..."
# Remove soft link 'cls' from /bin/ directory.
sudo rm -v /bin/cls

# Remove 'cls.sh' from /usr/bin/ directory.
sudo rm -v /usr/bin/cls.sh

# Remore '.cls/' directory in your Home directory.
sudo rm -vr $HOME/.cls/
echo -e "\n[*] Uninstalling dependencies..."
# purge dependencies.
sudo apt purge cowsay toilet

# autoremove remaining files of dependencies.
sudo apt autoremove
echo -e "\n[+] cls uninstalled."
