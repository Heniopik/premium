#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
clear
figlet -f small Panel SSH
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "     [1]  Create SSH & OpenVPN"
echo -e "     [2]  Create Trial Account"
echo -e "     [3]  Renew Account"
echo -e "     [4]  Delete Account"
echo -e "     [5]  Check User Login"
echo -e "     [6]  List User"
echo -e "     [7]  Delete User Expired"
echo -e "     [8]  Set up Autokill"
echo -e "     [9]  Cek Multi Login User"
echo -e "     [10] Restart Service Dropbear, Squid3"
echo -e "     [x]  Exit"
echo -e "======================================"
echo -e ""
read -p "     Select From Options [1-10 or x] :  " port
echo -e ""
case $port in
1)
usernew
;;
2)
trial
;;
3)
renew
;;
4)
deluser
;;
5)
cek
;;
6)
member
;;
7)
delete
;;
8)
autokill
;;
9)
ceklim
;;
10)
restart
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac