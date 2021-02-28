#
sudo kill $(pgrep -f unattended)
#
sudo apt-get -y update
sudo apt-get -y upgrade
#
sudo apt-get -y install docker.io && sudo apt-get -y  install docker-compose && sudo apt-get -y  install golang-go
sudo systemctl start docker
sudo usermod -a -G docker $USER
# clone the repo
git clone https://github.com/trafoDev/easyBC.git
find . -name *.sh -exec chmod 755 {} \;

