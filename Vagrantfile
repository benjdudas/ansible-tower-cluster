# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # create load balancer
  config.vm.define :lb do |lb_config|
    lb_config.vm.box = "centos/7"
    lb_config.vm.hostname = "lb"
    lb_config.vm.network :private_network, ip: "10.0.15.35"
    lb_config.vm.provider "virtualbox" do |lb|
      lb.memory = "1024"
    end
    lb_config.vm.provision 'bootstrap', type: 'ansible' do |ansible|
      ansible.compatibility_mode = "2.0"
      ansible.playbook = './provisioning/bootstrap-lb.yml'
    end
  end

  # create database
  config.vm.define :db do |db_config|
      db_config.vm.box = "centos/7"
      db_config.vm.hostname = "db"
      db_config.vm.network :private_network, ip: "10.0.15.104"
      db_config.vm.provider "virtualbox" do |vb|
        vb.memory = "2000"
      end
      db_config.vm.provision 'bootstrap', type: 'ansible' do |ansible|
        ansible.compatibility_mode = "2.0"
        ansible.playbook = './provisioning/bootstrap-int.yml'
      end
  end

  # creacte tower4
  config.vm.define :tower4 do |t3_config|
      t3_config.vm.box = "centos/7"
      t3_config.vm.hostname = "tower4"
      t3_config.vm.network :private_network, ip: "10.0.15.103"
      t3_config.vm.provider "virtualbox" do |vb|
        vb.memory = "2000"
      end
      t3_config.vm.provision 'bootstrap', type: 'ansible' do |ansible|
        ansible.compatibility_mode = "2.0"
        ansible.playbook = './provisioning/bootstrap-int.yml'
      end
  end

  # creacte tower3
  config.vm.define :tower3 do |t3_config|
      t3_config.vm.box = "centos/7"
      t3_config.vm.hostname = "tower3"
      t3_config.vm.network :private_network, ip: "10.0.15.102"
      t3_config.vm.provider "virtualbox" do |vb|
        vb.memory = "2000"
      end
      t3_config.vm.provision 'bootstrap', type: 'ansible' do |ansible|
        ansible.compatibility_mode = "2.0"
        ansible.playbook = './provisioning/bootstrap-int.yml'
      end
  end

   # create tower2
  config.vm.define :tower2 do |t2_config|
      t2_config.vm.box = "centos/7"
      t2_config.vm.hostname = "tower2"
      t2_config.vm.network :private_network, ip: "10.0.15.101"
      t2_config.vm.provider "virtualbox" do |vb|
        vb.memory = "2000"
      end
      t2_config.vm.provision 'bootstrap', type: 'ansible' do |ansible|
        ansible.compatibility_mode = "2.0"
        ansible.playbook = './provisioning/bootstrap-int.yml'
      end
  end


   # create tower1
  config.vm.define :tower1 do |t1_config|
      t1_config.vm.box = "centos/7"
      t1_config.vm.hostname = "tower1"
      t1_config.vm.network :private_network, ip: "10.0.15.100"
      t1_config.vm.provider "virtualbox" do |vb|
        vb.memory = "2000"
      end
      t1_config.vm.provision 'bootstrap', type: 'ansible' do |ansible|
        ansible.compatibility_mode = "2.0"
        ansible.playbook = './provisioning/bootstrap-t1.yml'
      end
  end
end
