#!/bin/bash

echo $(pwd)

# Stop docker process
docker stop bmonz

# Remove docker process
docker rm bmonz

# Remove bmonz image
docker rmi 489701125781.dkr.ecr.ap-northeast-2.amazonaws.com/blogmon/bmonz

# Pull bmonz image from ECR
docker pull 489701125781.dkr.ecr.ap-northeast-2.amazonaws.com/blogmon/bmonz:latest

# Run docker process
docker run -d --name bmonz -p 5061:8080 489701125781.dkr.ecr.ap-northeast-2.amazonaws.com/blogmon/bmonz
