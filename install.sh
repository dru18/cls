#! /bin/bash

# Uninstall cls.
sudo bash uninstall.sh

echo -e "\n[*] Installing dependencies...\n"
# Install dependencies.
sudo apt install cowsay toilet

echo -e "\n[*] Installing cls...\n"
# Make 'cls.sh' executable.
sudo chmod -v 755 cls.sh

# Copy 'cls.sh' to /usr/bin/ directory.
sudo cp -v cls.sh /usr/bin/

# Make soft link for /usr/bin/cls.sh to /bin/cls
sudo ln -v -s /usr/bin/cls.sh /bin/cls

# Make restricted hidden '.cls/' directory in your home directory.
sudo mkdir -v $HOME/.cls/

# Copy About/ directory to .cls/ directory in your Home directory.
sudo cp -vr About/ $HOME/.cls/About/

echo "[+] cls installed successfully." | cowsay -f tux | toilet -f term --gay
