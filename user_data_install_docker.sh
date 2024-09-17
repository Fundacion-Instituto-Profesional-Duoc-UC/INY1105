#!/bin/bash
# Update the package index
yum update -y

# Install Docker
amazon-linux-extras enable docker
yum install -y docker

# Start Docker service
systemctl start docker

# Enable Docker to start on boot
systemctl enable docker

# Add the ec2-user to the docker group to allow running Docker commands without sudo
usermod -aG docker ec2-user

# Print Docker version to confirm installation
docker --version

# Install Git
dnf install git -y
