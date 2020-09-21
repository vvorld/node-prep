#!/bin/bash
cd /tmp
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common ntp
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io nano mc prometheus-node-exporter
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose 
sudo chmod +x /usr/local/bin/docker-compose && sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo docker-compose --version

#sudo curl -O https://raw.githubusercontent.com/vvorld/node-prep/master/authorized_keys
#sudo chmod 0600 /tmp/authorized_keys
#sudo mv /tmp/authorized_keys /root/.ssh/authorized_keys
