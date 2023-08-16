#!/bin/bash

# This script is used to install the requirements for refrence implementation compilation on Windows Subsystem for Linux (WSL)
# If you encounter errors during installation try `sudo apt update && sudo apt upgrade


if [ "$(id -u)" -ne 0 ]; then
	printf "Script must be run as root!\n"
	exit 1
fi

if [ ! -w "${PWD}" ]; then
  printf "Directory is not writable!\n"
  exit 1
fi

dirname="${PWD##*/}"
if [ "${dirname}" != "RefrenceImpl" ]; then
  printf "Script must be run from the RefrenceImpl directory not from %s !\n" "${dirname}"
  exit 1
fi

for i in 5 4 3 2 1 0; do
    printf "\033[0;31mStarting in %s seconds press Ctrl+C to cancel...\033[0m\n" "$i"
    sleep 1
done
# sudo apt update
# sudo apt upgrade
sudo apt install -y python3 python3-pip

sudo apt install -y llvm clang gtkwave
sudo apt install -y git

printf "\033[0;32Requirements Complete\033[0m\n"



if [ ! -f "mOISC-dRISC" ]; then
  git clone https://github.com/MarcoCrepaldi-iit/mOISC-dRISC.git
fi

sudo pip3 install -r mOISC-dRISC/requirements.txt

cd /mOISC-dRISC
./autogen examples/sine_wave -mkfull

printf "\033[0;Initial Compilation Complete\033[0m\n"