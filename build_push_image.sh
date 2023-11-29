#!/bin/bash

#melakukan build dockerfile
docker build -t item-app:v1 .

#cek list docker image
docker images

#push docker image ke docker hub
cat ../dockerpass.txt | docker login--username lailafadilah383 -- passsword-stdin
docker tag item-app:v1 lailafadilah383/item-app:v1
docker push lailafadilah383/item-app:v1