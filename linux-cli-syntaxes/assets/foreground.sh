#!/bin/bash 

echo -e "Session is getting Configured ... "
systemctl restart iptables
yum install -y podman &>/dev/null 
podman pull registry.access.redhat.com/ubi7/ubi &>/dev/null 
clear 
echo -e "\e[32m YOUR TERMINAL IS READY FOR USE\e[0m\n\n Now you can connect to the host"