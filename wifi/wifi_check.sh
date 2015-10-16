#!/bin/bash

#------------------------------------------------------------------------------
# RaspberryPi Wifi Check and Reconnect Script
#
# Cooper Baker - 2014 - www.cooperbaker.com
#
# Checks to see if router can be pinged, and if not, tries to reconnect wifi.
# Checks to see if hostname is recognized by dns, and if not, renews lease.
# Uses a lockfile to prevent multiple instances of script from running.
#
# Install script where you want it to live  : /home/cooper/wifi
# Make script executable                    : chmod 755 wifi_check
# Add to root crontab                       : sudo crontab -e 
# Run every two minutes                     : */2 * * * * /home/cooper/wifi/wifi_check
#
# Adapted from a script by Kevin Reed - https://github.com/dweeber/WiFi_Check
#------------------------------------------------------------------------------

# your router address
router=192.168.1.1

# lockfile for this script
# configure path for your system
lockfile="/home/pi/intellizones/wifi/wifi_check.pid"

# Check to see if there is a lock file
if [ -e $lockfile ]
then
    # check to see if lockfile is still valid
    pid=$(cat $lockfile)
    if kill -0 &>1 > /dev/null $pid
    then
        # process is still running so exit the script 
        exit 1
    else
        # remove old lockfile
        rm $lockfile
    fi
fi

# set a new lock file using the current PID#
echo $$ > $lockfile

# try to ping the router
ping=$(ping -c1 $router | grep "ttl")

# get date and time
timestamp=$(date +"%m/%d/%y %T")

# if router answered do nothing, otherwise reconnect
if [[ $ping ]]
then
    echo "C" >> /home/pi/intellizones/wifi/ConnectionStatus.txt
else
    echo "$timestamp wifi is dis. Reconnecting..." >> /home/pi/intellizones/wifi/ConnectionStatus.txt
    sudo ifdown --force wlan0
    sleep 5
    sudo ifup --force wlan0
fi

# get the ip address
ip=$(hostname -I)

# get the hostname
name=$(hostname)

# traceroute to self ip
trace=$(traceroute $ip)

# check to see if hostname is in traceroute results
if [ "${trace/$name}" = "$trace" ] ; then
    echo "$timestamp dns not r $name. Renewing lease..." >> /home/pi/intellizones/wifi/ConnectionStatus.txt
    sudo ifdown --force wlan0
    sleep 5
    sudo ifup --force wlan0
else
    echo "$timestamp dns $name."
fi

# remove Lock file and exit
rm $lockfile
exit 0

# EOF
