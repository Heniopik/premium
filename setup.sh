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
MYIP=$(wget -qO- ipinfo.io/ip);
if [ -f "/etc/v2ray/domain" ]; then
echo "Script Sukses Terinstall"
exit 0
fi
mkdir /var/lib/premium-script;
echo "IP=" >> /var/lib/premium-script/ipvps.conf
#Install Host
wget https://raw.githubusercontent.com/Heniopik/premium/main/cf.sh && chmod +x cf.sh && ./cf.sh
#install ssh ovpn
wget https://raw.githubusercontent.com/Heniopik/premium/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
#install xray
wget https://raw.githubusercontent.com/Heniopik/premium/main/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh

rm -f /root/ssh-vpn.sh
rm -f /root/ins-vt.sh
rm -f /root/cf.sh
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "=================================-NYARIGRATISAN Vpn Store-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - Websocket TLS        : 443" | tee -a log-install.txt
echo "   - Websocket Non Tls  : 8080"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt
echo "   - Stunnel4                   : 222, 777"  | tee -a log-install.txt
echo "   - Dropbear                  : 109, 143"  | tee -a log-install.txt
echo "   - Squid Proxy              : 3128, 8000"  | tee -a log-install.txt
echo "   - Badvpn                    : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                        : 81"  | tee -a log-install.txt
echo "   - Trojan                        : 2087"  | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - Dev/Main                : NYARIGRATISAN Vpn Store"  | tee -a log-install.txt
echo "   - Telegram                : https://t.me/anuybazoelk"  | tee -a log-install.txt
echo "   - Whatsapp               : https://wa.me/6285349326511"  | tee -a log-install.txt
echo "------------------Script Created By AnuyBazoelk639-----------------" | tee -a log-install.txt
echo ""
echo " Server Reboot 5 Detik"
sleep 5
rm -f setup.sh
reboot

