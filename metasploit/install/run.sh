#!/bin/bash

msfdb init &> /dev/null
sleep 1

#if [ -e /root/.msf4 ]; then
#   if [ ! -L /root/.msf4 ]; then
#      echo "/root/.msf4 already exists and is not a symlink"
#   fi
#else
#   ln -s /home/msf/.msf4 /root/.msf4
#fi

sudo /usr/bin/msfconsole
