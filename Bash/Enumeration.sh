#!/bin/bash
echo Are you ready for this ?
read x
echo HERE WE GOOOOOOOOOOOOOOO
echo ....
sleep 1
echo ...
sleep 1
echo ..
sleep 1
echo .
sleep 1

ps aux
ps -ef
cat /etc/services
cat /etc/cron*

echo "continue ?"
read y

uname -a
uname -mrs
rpm -q kernel
cat /proc/version

echo "continue ?"
read z

dmesg
ls /boot
ls -alh /usr/bin
ls -alh /sbin/

echo "continue ?"
read a

iptables -L
/sbin/ifconfig -a
cat /etc/network/interfaces
cat /etc/sysconfig/network

echo "continue ?"
read b

cat /etc/resolv.conf
cat /etc/networks
hostname
dnsdomainname

echo "continue ?"
read c


lsof -i
netstat -antup
netstat -antpx
netstat -tulpn

echo "continue ?"
read d

last
w
id
who
cat /etc/sudoers
cat /etc/group
cat /etc/shadow
locate authorized_keys

echo "continue ?"
read e

mount && df -h
cat /etc/fstab
df -a
route
/sbin/route -nee
sudo -l
cat /etc/ssh/ssh_config
ls -alhR /var/www
