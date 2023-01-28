# dln2-dkms
dln2 kernel modules for Linux distributions that are lacking those.

## Installation

The following procedure is meant for a PiKVM installation, but should be mostly the same for any other Linux distribution.

Enter the following commands in the terminal:
```
git clone https://github.com/zappanaut/dln2-dkms
pacman -S dkms
cd dln2-dkms
./install.sh
reboot
```
