# Metasploit
This is a simple docker container using Ubuntu 14.04 and Rapid 7's apt repositories. Your .msf4 data will be stored in data/msf4 if you either use docker-compose or add the volume when you start docker.  docker-compose is definitely the easiest way to use this. I've provided a couple of bash aliases to make running these even easier.

# Running msfconsole
docker-compose run --rm metasploit

# Bash aliases
source install/.bash_alias
msfconsole


