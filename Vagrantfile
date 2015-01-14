VAGRANTFILE_API_VERSION = "2"

path = "#{File.dirname(__FILE__)}"

require 'yaml'
require path + '/scripts/homestead.rb'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|


  #Dir.foreach('servers') do |item|
  #  next if item == '.' or item == '..'
  #  puts(item)
  #end

  #config.vm.define "web" do |web|
  #  each server will have this block
  #end

  Homestead.configure(config, YAML::load(File.read(path + '/servers/web.yaml')))

end