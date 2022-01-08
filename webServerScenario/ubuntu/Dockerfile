FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install vim gcc openssh-server sshpass iproute2 nmap -y
 

ENTRYPOINT ["/bin/bash"]
