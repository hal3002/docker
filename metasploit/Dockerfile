FROM ubuntu:trusty
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get -y install wget nmap john tmux vim

COPY install/metasploit-framework.list /etc/apt/sources.list.d
RUN wget --quiet -O - http://apt.metasploit.com/metasploit-framework.gpg.key | apt-key add -
RUN apt-get update
RUN apt-get -y install metasploit-framework
COPY install/run.sh /usr/local/bin/run.sh
RUN chmod 755 /usr/local/bin/run.sh

RUN useradd -m -d /home/msfadmin -s /bin/bash -U msfadmin
COPY install/vimrc /home/msfadmin/.vimrc
COPY install/listeners.rc /home/msfadmin/listeners.rc
RUN printf "msfadmin\tALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

EXPOSE 80:80
EXPOSE 443:443
EXPOSE 7777:7777
EXPOSE 8888:8888
EXPOSE 9999:9999

USER msfadmin 
WORKDIR /home/msfadmin
CMD ["/usr/local/bin/run.sh"]
