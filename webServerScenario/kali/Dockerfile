FROM kalilinux/kali-rolling:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get upgrade -y
RUN apt-get install sudo vim gcc build-essential iproute2 -y
RUN apt-get install nmap openssh-server sshpass -y

ENTRYPOINT ["/bin/bash"]
