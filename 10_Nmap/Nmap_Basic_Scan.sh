#!/usr/bin/env bash


if [ "$#" == "0" ]
    then
    echo You have to give at leat one parameter 'IP_ADRESS'
    echo Usage '$IP_ADRESS (192.168.1.1 or 192.168.1.0/24 or 192.168.1.0-192.168.1.1.100)'
    echo 'For each scan a log File wile be created named nmap.log '
    exit 1
fi


nmap -sT -Pn ${1} | tee nmap.log ;
nmap -script banner ${1} | tee -a nmap.log

