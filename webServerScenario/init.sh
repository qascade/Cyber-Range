docker-compose up
wait $!
docker-compose down 
#Disposing off container after use
echo "Cleaning Dangling Containers"
docker container prune -f &> /dev/null
docker rmi -f $(docker images -f "dangling=true" -q) &> /dev/null
echo "Cleaning Done. Thank you for using CyberShield!"