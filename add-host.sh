#!/bin/bash

read -p "Input New Domain : " yourdomain

#Validate
if [[ $yourdomain == "" ]]; then
echo "Please Input New Domain"
exit 1
fi

#Input To Domain
cat > /etc/v2ray/domain << END
$domainbaru
END

clear 
echo "Success added your domain for host"
