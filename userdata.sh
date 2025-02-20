#!/bin/bash
# Update the system
sudo apt update -y

# Install Jenkins
sudo apt install -y openjdk-11-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install -y jenkins

# Install Docker
sudo apt install -y docker.io

# Add Jenkins user to the Docker group
sudo usermod -aG docker jenkins

# Restart Jenkins and Docker
sudo systemctl restart jenkins
sudo systemctl restart docker

# Enable Jenkins and Docker to start on boot
sudo systemctl enable jenkins
sudo systemctl enable docker
