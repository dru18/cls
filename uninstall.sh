#! /bin/bash

# Remove soft link 'cls' from /bin/ directory.
sudo rm /bin/cls

# Remove 'cls.sh' from /usr/bin/ directory.
sudo rm /usr/bin/cls.sh

# purge dependencies.
sudo apt purge cowsay toilet

# autoremove remaining files of dependencies.
sudo apt autoremove
