#! /bin/bash
echo "Hello."
echo "Here you will know about your OS and your computer system."
echo "You have used= $(uptime | awk '{print $3}') min."
echo "Your fedora version is $(cat /etc/*-release |head -3|tail -1|cut -d '=' -f2)."
echo "Your OS name is= $(cat /etc/*-release |head -2|tail -1|cut -d '=' -f2
) and your OS version is= $(cat /etc/*-release |head -3|tail -1|cut -d '=' -f2|awk '{print $1}'|cut -d '"' -f2)."
echo "Your Architecture is=$(uname -i)."
echo "Your Username is=$(who am i | awk '{print $1}')."
echo "You are now using virtual terminal tty$(tty|cut -d '/' -f4)."
echo "Your diskusage is $(df)."
echo "Your memory usage is $(free)."
echo "Your ip address is $(ifconfig|tail -9|head -2|tail -1|awk '{print $2}')."
echo "Your Subnetmask is $(ifconfig|tail -9|head -2|tail -1|awk '{print $4}')."
echo "Your default gateway is $(ifconfig|tail -9|head -2|tail -1|awk '{print $6}')."
echo "Your ip interface is
 $(ifconfig|tail -9)."

