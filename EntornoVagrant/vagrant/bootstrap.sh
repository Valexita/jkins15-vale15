# Docker install
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
# Use docker without sudo
sudo groupadd docker
sudo usermod -aG docker vagrant
newgrp docker
# Jenkins requires Java to run Install Java
sudo apt-get install openjdk-11-jdk -y
# Install Jenkins
sudo wget -0 /usr/share/keyrings/jenkins-keyring.asc \
https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y