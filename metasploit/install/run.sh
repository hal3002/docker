#!/bin/bash

export EDITOR=/usr/bin/vim

if [ ! -d /home/msfadmin/.msf4 ]; then
   mkdir /home/msfadmin/.msf4
fi

if [ ! -d /home/msfadmin/payloads ]; then
    mkdir /home/msfadmin/payloads
fi

msfdb init && msfdb start &> /dev/null
echo "Waiting for the database instance to start"
sleep 10

# Start main msfconsole instance
sudo tmux new-session -d -s metasploit 

# Create a server for the payloads
sudo tmux rename-window -t metasploit:0 "Paylaod Server"
sudo tmux send-keys -t metasploit:0 "cd payloads && sudo /usr/bin/python -m SimpleHTTPServer 80" C-m


sudo tmux new-window -t metasploit:1 -n "MSF Console"
sudo tmux send-keys -t metasploit:1 "/usr/bin/msfconsole -r listeners.rc" C-m

# Finally attach to the server
sudo tmux attach -t metasploit
