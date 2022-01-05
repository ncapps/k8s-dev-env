# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/focal64"
  config.vm.disk :disk, size: "60GB", primary: true

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "8192"
  end
  
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "playbook.yaml"
  end
end
