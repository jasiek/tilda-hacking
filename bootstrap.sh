apt-get -y install software-properties-common
add-apt-repository ppa:team-gcc-arm-embedded/ppa
apt-get update
apt-get -y install gcc-arm-embedded git make python python-pip
pip install pyusb
cp /vagrant/49-tilda-mk3.rules /etc/udev/rules.d/49-tilda-mk3.rules
sudo udevadm control --reload-rules

