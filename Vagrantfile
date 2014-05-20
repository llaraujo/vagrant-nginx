# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'

PROJ_CONFIG = YAML::load_file("./project.yml")

VAGRANT_HOME_DIRECTORY = "./"

Vagrant.configure("2") do |config|

	# Machine config
	config.vm.box = PROJ_CONFIG['box']

	config.vm.box_url = PROJ_CONFIG['box_url']

	config.vm.provider :virtualbox do |vb|
		vb.customize ["modifyvm", :id, "--memory", PROJ_CONFIG['machine_memory'] ]
	end

	## Hostmanager

	config.vm.provision :hostmanager

	config.hostmanager.enabled = true
	config.hostmanager.manage_host = true
	config.hostmanager.ignore_private_ip = false
	config.hostmanager.include_offline = true

	config.vm.define PROJ_CONFIG['machine_alias'] do |node|
		node.vm.hostname = PROJ_CONFIG['machine_hostname']
		node.vm.network :private_network, ip: PROJ_CONFIG['machine_ip']
		# node.hostmanager.aliases = %w(anotherdomaininmachine.com)
	end

	## Omnibus
	config.omnibus.chef_version = :latest

	## Berkshelf
	config.berkshelf.enabled = true

	## Chef Solo cookbooks
	config.vm.provision :chef_solo do |chef|

		chef.add_recipe "apt"
		chef.add_recipe "build-essential"
		chef.add_recipe "nginx"

	end

	## First Run!
	config.vm.provision "shell", path: "./_config/first-run.sh";

end
