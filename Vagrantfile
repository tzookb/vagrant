VAGRANTFILE_API_VERSION = "2"

path = "#{File.dirname(__FILE__)}"

require 'yaml'
require path + '/scripts/homestead.rb'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|


  config.vm.provider "virtualbox" do |v|
    v.name = "dev_ubuntu"
  end

  config.vm.network "private_network", ip: "192.168.50.4"

  config.vm.network "public_network"

  Homestead.configure(config, YAML::load(File.read(path + '/Homestead.yaml')))

end

