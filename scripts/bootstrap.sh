#!/bin/bash

# Update the instance
yum update -y

# Install Docker
amazon-linux-extras install docker -y
service docker start
usermod -a -G docker ec2-user

# Enable Docker on boot
systemctl enable docker

# Pull a simple Flask app from Docker Hub (we'll replace this later with your custom app)
docker run -d -p 5000:5000 --name flask-app tiangolo/uwsgi-nginx-flask:python3.8

# Log a message (visible in /var/log/cloud-init-output.log)
echo "Bootstrap complete. Flask app running."
