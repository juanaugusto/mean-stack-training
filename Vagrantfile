# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "fedora/25-cloud-base"
  config.vm.provision "shell", path: "provision.sh"
  config.vm.network "private_network", ip: "10.0.0.2", netmask: "255.255.255.0"
  config.vm.hostname = "MEAN-STACK-TRAINING"
  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provider :libvirt do |domain|
    domain.memory = 512
    domain.cpus = 2
    domain.nested = true
    domain.volume_cache = 'none'
  end

end
