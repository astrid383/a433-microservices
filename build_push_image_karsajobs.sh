#!/bin/bash

# melakukan bulid dari dockerfile
docker build -t lailafadilah383/karsajobs:latest .

#push docker image ke dockerhub
cat ../dockerpass.txt | docker login --username lailafadilah383 --password-stdin
docker tag karsajobs:latest lailafadilah383/karsajobs:latest
docker push lailafadilah383/karsajobs:latest
