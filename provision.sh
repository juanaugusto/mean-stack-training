#!/bin/bash
sudo dnf -y update --refresh
sudo dnf -y install nfs-utils
sudo systemctl enable rpcbind.service
sudo systemctl enable nfs-client.target
sudo systemctl start rpcbind.service
sudo systemctl start nfs-client.target
sudo dnf -y install vim wget
cd ~/
wget https://rpm.nodesource.com/setup_7.x
mv setup_7.x setup_7.x.sh
chmod +x setup_7.x.sh
sudo ./setup_7.x.sh
sudo dnf install -y nodejs




