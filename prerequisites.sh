#!/bin/bash
#
sudo kill $(pgrep -f unattended)
#
sudo apt-get -y update
sudo apt-get -y upgrade
#
sudo apt-get -y install docker.io && sudo apt-get -y  install docker-compose 
#&& sudo apt-get -y  install golang-go
sudo systemctl start docker
sudo usermod -a -G docker $USER
#
wget -c https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local
export PATH=$PATH:/usr/local/go/bin
echo "export PATH=$PATH:/usr/local/go/bin" >> $HOME/.bashrc
# clone the repo
git clone https://github.com/trafoDev/easyBC.git
find . -name *.sh -exec chmod 755 {} \;
#

