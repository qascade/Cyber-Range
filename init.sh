#! /bin/bash

TARGET_BINARY=$1
BASH="/bin/bash"

#Generating Dockerfile 
cp TempDockerfile Dockerfile 
echo "RUN rm /home/hacker/bin/* &> /dev/null" >> Dockerfile 
echo "COPY ./bin/${TARGET_BINARY}.c ." >> Dockerfile
echo "RUN gcc -w -o ${TARGET_BINARY} ${TARGET_BINARY}.c" >> Dockerfile
echo "RUN rm ${TARGET_BINARY}.c" >> Dockerfile
echo 'ENTRYPOINT ["'${BASH}'"]' >> Dockerfile

#Building the container.
docker build . -t qascade/rev_engg_kali:0.5.0 &> /dev/null
cat Dockerfile 
rm Dockerfile 

#running container as a child process
docker run -it qascade/rev_engg_kali:0.5.0  
wait $!

#Disposing off container after use 
echo "Cleaning Dangling Containers"
docker container prune -f &> /dev/null
docker rmi -f $(docker images -f "dangling=true" -q) &> /dev/null
echo "Cleaning Done. Thank you for using CyberShield!"
#cat Dockerfile 




