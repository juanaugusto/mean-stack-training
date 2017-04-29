Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", path: "provision.sh"
  config.vm.network "private_network", ip: "10.0.10.2", netmask: "255.255.255.0"
  config.vm.hostname = "MEAN-STACK-TRAINING"
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2
    vb.memory = 512
  end
end

