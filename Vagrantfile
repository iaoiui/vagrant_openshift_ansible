# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "16384"
  end


  (0..0).each do |n|
    config.vm.define "master" do |c|
        c.vm.hostname = "master"
        c.vm.network "private_network", ip: "10.240.0.10"
        c.vm.network :public_network, ip: "192.168.1.3", bridge: "eno1"
        c.vm.provision :shell, :path => "scripts/bootstrap/vagrant-setup-hosts-file.sh"
    end
  end

end
