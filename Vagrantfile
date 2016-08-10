# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.network "private_network", type: "dhcp"
  config.vm.provision :shell, path: 'bootstrap.sh'
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
    vb.customize ['modifyvm', :id, '--usb', 'on']
    vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'Tilda Mk3 USB Serial', '--vendorid', '0x0483', '--productid', '0xdf11']
    vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'Tilda Mk3 Virtual Filesystem', '--vendorid', '0xf055', '--productid', '0x9800']
  end
end
