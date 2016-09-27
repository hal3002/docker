#!/bin/bash

msfdb init &> /dev/null
echo "Waiting to let the database start"
sleep 5
sudo /usr/bin/msfconsole
