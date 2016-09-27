FROM ubuntu:trusty
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get -y install wget nmap john

COPY install/metasploit-framework.list /etc/apt/sources.list.d
RUN wget --quiet -O - http://apt.metasploit.com/metasploit-framework.gpg.key | apt-key add -
RUN apt-get update
RUN apt-get -y install metasploit-framework
COPY install/run.sh /usr/local/bin/run.sh
RUN chmod 755 /usr/local/bin/run.sh

RUN useradd -m -d /home/msf -s /bin/bash -U msf
RUN printf "msf\tALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER msf
WORKDIR /home/msf
CMD ["/usr/local/bin/run.sh"]
