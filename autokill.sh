#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IP=$(wget -qO- ipinfo.io/ip);
Green_font_preipinfo.io/ipx="\033[32m" && Red_font_preipinfo.io/ipx="\033[31m" && Green_background_preipinfo.io/ipx="\033[42;37m" && Red_background_preipinfo.io/ipx="\033[41;37m" && Font_color_sufipinfo.io/ipx="\033[0m"
Info="${Green_font_preipinfo.io/ipx}[ON]${Font_color_sufipinfo.io/ipx}"
Error="${Red_font_preipinfo.io/ipx}[OFF]${Font_color_sufipinfo.io/ipx}"
cek=$(grep -c -E "^# Autokill" /etc/cron.d/tendang)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
ipinfo.io/ip
clear
