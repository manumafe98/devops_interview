#!/bin/bash
sudo yum update -y
sudo yum install -y docker
sudo systemctl start docker.service
sudo usermod -a -G docker ec2-user
sudo yum install -y git
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose