#!/bin/bash
echo -e "\e[4mSYSTEM INFORMATION\e[0m"
sleep 1
ping -c 1 -w 5 google.com &> /dev/null && int="Connected" || int="Disconected"
echo -e "\e[32mInternet : \e[31m$int \e[0m"
sleep 1
echo -e "\e[32mOperating System Type : \e[31m`uname -o`\e[0m"
echo -e "\e[32mServer Type :  \e[31m`dmidecode -s system-manufacturer`\e[0m"

#Check OS Releae Version and Name
################################
OS=$(uname -s)
if [ "$OS" = "Linux" ]; then
	if [ -f /etc/redhat-release ]; then
		DIST=`cat /etc/redhat-release | awk '{print $1,$2}'`
	
	elif [ -f /etc/SuSE-release ]; then
		DIST=SUSE
	elif [ -f /etc/mandrake-release ]; then
		DIST=MANDREKE
	elif [ -f /etc/debian_version ]; then

		DIST=Debian
	fi
fi

echo -e "\e[32mDistribution :\e[0m"  "\e[31m$DIST\e[0m"
sleep 1
#check Architecture
###################
echo  -e "\e[32mArchitecture :\e[0m" "\e[31m`uname -m`\e[0m"

#Check Kernel Release
#####################
echo  -e "\e[32mKernel Release :\e[0m" "\e[31m`uname -r`\e[0m"

#Check Hostname
###############
echo  -e "\e[32mHostname :\e[0m" "\e[31m`hostname`\e[0m"

#Check Internal IP
echo  -e "\e[32mInternal IPs :\e[0m" "\e[31m`hostname -I`\e[0m"

#Check DNS

nameservers=$(cat /etc/resolv.conf | sed '1 d' | awk '{print $2}')
echo -e "\e[32mName Servers :\e[0m" "\e[31m$nameservers\e[0m"

#check Logged In Users
######################
who>/tmp/who
echo -e "\e[32mLogged In Users: :\e[0m"
echo -e "\e[31m`cat /tmp/who` \e[0m"

#Check RAM and SWAP Usages
##########################
free -h > /tmp/ramcache


