#!/bin/bash

while true ; do
   if ifconfig wlan0 | grep -q "inet addr:" ; then
cat file >> ok.txt
echo 'Connection is fine' >> ok.txt
sleep 120
   else
      ifdown --force wlan0
	sleep 20
      ifup --force wlan0
cat file >> starting.txt
echo 'text to append' >> starting.txt      
sleep 10
   fi
done
