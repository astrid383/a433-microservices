#!/bin/bash

# melakukan bulid dari dockerfile
docker build -t lailafadilah383/karsajobs-ui:latest .

#push docker image ke dockerhub
cat ../dockerpass.txt | docker login --username lailafadilah383 --password-stdin
docker tag karsajobs-ui:latest lailafadilah383/karsajobs-ui:latest
docker push lailafadilah383/karsajobs-ui:latest
