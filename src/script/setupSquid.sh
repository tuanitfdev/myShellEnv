#!/bin/bash
apt update
apt install squid -y
apt install apache2-utils -y
systemctl stop squid
touch /etc/squid/passwords
chmod 640 /etc/squid/passwords
# create new user:decryptPass
htpasswd -b -c /etc/squid/passwords tuanitf 1tfTn&Pxy
mv /etc/squid/squid.conf /etc/squid/squid.conf.org
cp conf/squid.conf /etc/squid/squid.conf
systemctl restart squid