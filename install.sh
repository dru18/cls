#! /bin/bash

# Install dependencies.
sudo apt install cowsay toilet

# Make 'cls.sh' executable.
sudo chmod 755 cls.sh

# Copy 'cls.sh' to /usr/bin/ directory.
sudo cp cls.sh /usr/bin/

# Make soft link for /usr/bin/cls.sh to /bin/cls
sudo ln -s /usr/bin/cls.sh /bin/cls
