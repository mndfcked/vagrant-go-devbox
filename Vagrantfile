# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  # Disable automatic box update checking.
  config.vm.box_check_update = false

  config.vm.synced_folder "./code", "/home/vagrant/code"

  config.vm.provision "shell", path: "bootstrap.sh", privileged: true, binary: false
  config.vm.provision "shell", path: "setup.sh", privileged: false, binary: false
end
