#!/bin/bash

echo $(pwd)

# Stop docker process
docker stop devbmonz

# Remove docker process
docker rm devbmonz

# Remove bmonz image
docker rmi 489701125781.dkr.ecr.ap-northeast-2.amazonaws.com/blogmon/bmonz

# Pull bmonz image from ECR
docker pull 489701125781.dkr.ecr.ap-northeast-2.amazonaws.com/blogmon/bmonz:latest

# Run docker process
docker run -d --name devbmonz -p 5060:8080 489701125781.dkr.ecr.ap-northeast-2.amazonaws.com/blogmon/bmonz
