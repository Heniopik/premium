#!/bin/bash
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
clear
read -rp "Input New Domain : " -e domain
echo "IP=$domain" >>/var/lib/premium-script/ipvps.conf
rm -rf /etc/xray/domain
echo $domain > /etc/xray/domain
cert.sh
