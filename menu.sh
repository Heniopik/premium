#!/bin/bash

clear

if [[ -e /etc/debian_version ]]; then
	OS=debian
	RCLOCAL='/etc/rc.local'
elif [[ -e /etc/centos-release || -e /etc/redhat-release ]]; then
	OS=centos
	RCLOCAL='/etc/rc.d/rc.local'
	chmod +x /etc/rc.d/rc.local
else
	echo "It looks like you are not running this installer on Debian, Ubuntu or Centos system"
	exit
fi
color3='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipv4.icanhazip.com )
	echo "------------ Welcome To Premium Script Menu ----------"
	echo "---------------- By NYARIGRATISAN Vpn Store -------------"
	echo " "
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "\e[032;1mCPU Model:\e[0m $cname"
	echo -e "\e[032;1mNumber Of Cores:\e[0m $cores"
	echo -e "\e[032;1mCPU Frequency:\e[0m $freq MHz"
	echo -e "\e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e "\e[032;1mTotal Amount Of Swap:\e[0m $swap MB"
	echo -e "\e[032;1mSystem Uptime:\e[0m $up"
	echo -e "\e[032;1mIsp Name:\e[0m $ISP"
	echo -e "\e[032;1mCity:\e[0m $CITY"
	echo -e "\e[032;1mTime:\e[0m $WKT"
	echo -e "\e[033;1mIPVPS:\e[0m $IPVPS"
	date | lolcat
	echo -e "-----------------------------------------------------"

echo -e ""

echo -e "Menu Utama" | lolcat -a -d 10

echo -e " 1.  Create SSH & OVPN"

echo -e " 2.  Create Trojan"

echo -e " 3.  Change Host"

echo -e " 4.  Renew Certificate"

echo -e " 5.  Change Port"

echo -e " 6.  Reboot VPS"

echo -e " 7.  Speedtest VPS"

echo -e " 8.  Information System"

echo -e " 9.  Info Script Auto Install"

echo -e " 10.  Restart All Service"

echo -e " 11.  Status Tunneling"

echo -e "\e[32m══════════════════════════════════════════\e[m"

echo -e " x.   Exit"

echo -e "\e[32m══════════════════════════════════════════\e[m"

echo -e ""

read -p "     Please Input Number  [1-11 or x] :  "  num

echo -e ""

case $num in

1)

tessh

;;

2)

trj

;;

3)

add-host

;;

4)

certxray

;;

5)

change-port

;;

6)

reboot

;;

7)

speedtest

;;

8)

info

;;

9)

about

;;

10)

restart

;;

11)

running

;;

x)

exit

;;

*)

echo "Please enter an correct number"

;;

esac
