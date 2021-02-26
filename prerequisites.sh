sudo apt-get -y install docker.io && sudo apt-get -y  install docker-compose && sudo apt-get -y  install golang-go
sudo systemctl start docker
sudo usermod -a -G docker $USER
