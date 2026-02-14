#!/bin/bash

sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker

sudo docker pull <ECR-IMAGE-URI>

sudo docker run -d -p 80:80 <ECR-IMAGE-URI>
