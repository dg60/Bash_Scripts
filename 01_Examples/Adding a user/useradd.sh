#!/usr/bin/env bash
# Add a user on a debian based System
# need root privilege


#check if the user has root privilege
if (( $EUID != 0 )); then
    echo "Please run the script as root or with sudo !"
    exit
fi

clear; 
echo -e "Please enter the name of the user:"
read username

clear; 
echo -e "Please enter the path of the home directory /home/username:"
read homedir

clear;
echo -e "Please enter a description for the user"
read description

# add the user
useradd -m -d ${homedir} -c ${description} ${username}

#check if the user was added
echo -e "User was added"
tail -1 /etc/passwd

#set the password for the user
echo -e "Please enter the password for ${username}"
passwd ${username}
