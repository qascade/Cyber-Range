#! /bin/bash

TARGET_BINARY=$1
BASH="/bin/bash"
cp TempDockerfile Dockerfile 
echo "COPY ./bin/${TARGET_BINARY}.c ." >> Dockerfile
echo "RUN gcc -w -o ${TARGET_BINARY} ${TARGET_BINARY}.c" >> Dockerfile
echo "RUN rm ${TARGET_BINARY}.c" >> Dockerfile
echo 'ENTRYPOINT ["'${BASH}'"]' >> Dockerfile
docker build . -t qascade/rev_engg_kali:0.4.2 &> /dev/null
rm Dockerfile 
docker run -it qascade/rev_engg_kali:0.4.2 
#cat Dockerfile 




#COPY ./bin/${TARGET_BINARY}.c .
#RUN gcc -w -o ${TARGET_BINARY} ${TARGET_BINARY}.c
#RUN rm ${TARGET_BINARY}.c
