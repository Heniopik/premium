#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
versi=$(cat /home/ver)
if [[ $versi == 1.2 ]]; then
echo "You Have The Latest Version"
exit 0
fi
echo "Start Update"
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/Heniopik/premium/main/menu.sh"
wget -O usernew "https://raw.githubusercontent.com/Heniopik/premium/main/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/Heniopik/premium/main/trial.sh"
wget -O change-port "https://raw.githubusercontent.com/Heniopik/premium/main/change.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/Heniopik/premium/main/port-ovpn.sh"
wget -O port-ssl "https://raw.githubusercontent.com/Heniopik/premium/main/port-ssl.sh"
wget -O port-tr "https://raw.githubusercontent.com/Heniopik/premium/main/port-tr.sh"
wget -O xp "https://raw.githubusercontent.com/Heniopik/premium/main/xp.sh"
wget -O add-tr "https://raw.githubusercontent.com/Heniopik/premium/main/add-tr.sh"
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-tr
chmod +x port-squid
chmod +x xp
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
cd
echo "1.2" > /home/ver
clear
echo " Fix minor Bugs"
echo " Now You Can Change Port Of Some Services"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot