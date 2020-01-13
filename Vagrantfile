# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"

  config.vm.provision "shell", inline: <<-SHELL
     apt-get update
     apt-get install -y git build-essential texinfo curl wget unzip openjdk-8-jdk
     git clone https://github.com/kubilus1/gendev.git
     cd gendev
     make
     make install
  SHELL
end

