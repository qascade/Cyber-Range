# Cyber-Range
My Experiment on trying to create a platform to host ctf challenges. (Website Design done)

### Available Functionalities:

*Deploy custom Kali Container with preloaded ctf-tools*
Tools List:
 - elftools
 - gdb-gef
 - radare2
 - pwntools

### How to Deploy the container
1. Clone the Repository `git clone https://github.com/qascade/CyberRange`
2. Choose or Load your own binaries you want to exploit in `bin` folder. 
3. Make `init.sh` executable: `chmod +x init.sh`
4. Let say your binary name is `stack.c`. To Deploy the container run `./init.sh stack`
5. You can also create a Ubuntu container with same functionality using `init_ubuntu.sh`

### Pull the Container Image from DockerHub 
`docker pull qascade/rev_engg_kali`

[DockerHub Link](https://hub.docker.com/r/qascade/rev_engg_kali)
