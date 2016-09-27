#!/bin/bash

if [ ! -d /home/msf/.msf4 ]; then
   mkdir /home/msf/.msf4
fi

msfdb init &> /dev/null
echo "Waiting to let the database start"
sleep 5
sudo /usr/bin/msfconsole
