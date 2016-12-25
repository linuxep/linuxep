#!/bin/bash  

echo "running container:"
docker ps

echo "stop and remove existing Linuxep container"
docker ps -a | grep 0.0.0.0:80 | awk '{print $1}' | xargs -I {} docker stop {} | xargs -I {} docker rm {}

echo "Run Linuxep in container"
docker run -t -p 80:80 linuxep/home