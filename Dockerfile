FROM qascade/rev_engg_kali:0.4.2
USER root 

#Basic Static Analysis Tools 
RUN apt-get update -y
RUN apt-get install sudo strace ltrace -y
RUN apt-get install elfutils -y
RUN apt-get install node -y
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN echo 'hacker:hello' | chpasswd
USER hacker 
RUN pip3 install pwntools 
WORKDIR /user/hacker

#For fixing gdb ascii error
RUN echo "export LC_CTYPE=C.UTF-8" >> .bashrc 

WORKDIR /home/hacker/bin 

#For installing gdb-gef plugin 
RUN wget -O ~/.gdbinit-gef.py -q http://gef.blah.cat/py
RUN echo source ~/.gdbinit-gef.py >> ~/.gdbinit

RUN rm /home/hacker/bin/* &> /dev/null
COPY ./bin/.c .
RUN gcc -w -o  .c
RUN rm .c
ENTRYPOINT ["/bin/bash"]
