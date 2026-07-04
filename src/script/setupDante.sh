#!/bin/bash
apt install dante-server
apt install net-tools
systemctl stop danted.service
useradd -r -s /bin/false tuanitfs
echo 'tuanitfs:1tfTn&Sks' | chpasswd
mv /etc/danted.conf /etc/danted.conf.org
cp conf/danted.conf /etc/squid/danted.conf
systemctl restart danted