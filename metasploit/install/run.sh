#!/bin/bash

export EDITOR=/usr/bin/vim

if [ ! -d /home/msf/.msf4 ]; then
   mkdir /home/msf/.msf4
fi

msfdb init && msfdb start &> /dev/null
echo "Waiting for the database instance to start"
sleep 10

sudo tmux new-session -d -s metasploit 
sudo tmux rename-window -t metasploit:0 msfconsole
sudo tmux send-keys -t metasploit:0 "/usr/bin/msfconsole" C-m
sudo tmux attach -t metasploit
