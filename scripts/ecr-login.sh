#/bin/bash

# ECR login
echo $(pwd)
aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin 489701125781.dkr.ecr.ap-northeast-2.amazonaws.com
