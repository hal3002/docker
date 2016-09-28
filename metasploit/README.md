# Metasploit
This is a simple docker container using Ubuntu 14.04 and Rapid 7's apt repositories. I've included a correct editor and .vimrc so you can also edit modules easily as well as a number of bash aliases to make life easier.

# Running msfconsole
docker run -P -it --rm hal3002/metasploit

# Keep your database
docker run -P -it --rm -v $HOME/.msf4:/home/msf/.msf4 hal3002/metasploit

# Bash aliases!
source bash_alias
metasploit
msfconsole
pattern_create -l 1024
metasm_shell
msfbinscan
msfvenom
