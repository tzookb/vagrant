VAGRANTFILE_API_VERSION = "2"

path = "#{File.dirname(__FILE__)}"

require 'yaml'
require path + '/scripts/homestead.rb'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|


  #each block is a server, and for each server you load each one yaml config

  config.vm.define "web" do |web|
    Homestead.configure(web, YAML::load(File.read(path + '/servers/web.yaml')))
  end

  #config.vm.define "mysql" do |mysql|
  #  Homestead.configure(mysql, YAML::load(File.read(path + '/servers/mysql.yaml')))
  #end


end