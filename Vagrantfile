# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "16384"
    vb.cpus = 2
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end


  (0..0).each do |n|
    config.vm.define "master" do |c|
  c.ssh.guest_port = 22
  c.ssh.insert_key = false
  c.ssh.username = "vagrant"
  c.ssh.host = "127.0.0.1"
  c.ssh.forward_agent = true 
        c.vm.hostname = "master"
        c.vm.network "private_network", ip: "10.240.0.10"
        c.vm.network :public_network, ip: "192.168.1.3", bridge: "eno1"
        c.vm.provision :shell, :path => "scripts/bootstrap/vagrant-setup-hosts-file.sh"
    end
  end
  (0..0).each do |n|
    config.vm.define "worker" do |c|
  c.ssh.guest_port = 22
  c.ssh.insert_key = false
  c.ssh.username = "vagrant"
  c.ssh.host = "127.0.0.1"
  c.ssh.forward_agent = true 
        c.vm.hostname = "worker"
        c.vm.network "private_network", ip: "10.240.0.20"
        c.vm.network :public_network, ip: "192.168.1.4", bridge: "eno1"
        c.vm.provision :shell, :path => "scripts/bootstrap/vagrant-setup-hosts-file.sh"
    end
  end
end
