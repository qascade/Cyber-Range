#! /bin/bash

TARGET_BINARY=$1
BASH="/bin/bash"

#Generating Dockerfile 
cp TempDockerfileUbuntu Dockerfile 
echo "RUN rm /home/hacker/bin/* &> /dev/null" >> Dockerfile 
echo "COPY ./bin/${TARGET_BINARY}.c ." >> Dockerfile
echo "RUN gcc -w -o ${TARGET_BINARY} ${TARGET_BINARY}.c" >> Dockerfile
echo "RUN rm ${TARGET_BINARY}.c" >> Dockerfile
echo 'EXPOSE 8080' >> Dockerfile 
#echo 'ENTRYPOINT ["'${BASH}'"]' >> Dockerfile
echo 'ENTRYPOINT ["code-server","/home/hacker","--verbose"]' >> Dockerfile
#Building the container.
docker build . -t qascade/rev_engg_ubuntu:0.1 #&> /dev/null
cat Dockerfile 
rm Dockerfile 

#running container as a child process
docker run -it -p 127.0.0.1:8085:8080 qascade/rev_engg_ubuntu:0.1  
wait $!

#Disposing off container after use 
echo "Cleaning Dangling Containers"
docker container prune -f &> /dev/null
docker rmi -f $(docker images -f "dangling=true" -q) &> /dev/null
echo "Cleaning Done. Thank you for using CyberShield!"
#cat Dockerfile 




