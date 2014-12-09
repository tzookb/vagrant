class Homestead
  def Homestead.configure(config, settings)
    # Configure The Box
    config.vm.box = settings["box"] ||= "hashicorp/precise32"
    config.vm.hostname = settings["hostname"] ||= "devServer"


    # Register All Of The Configured Shared Folders
    settings["folders"].each do |folder|
      config.vm.synced_folder folder["map"], folder["to"], create: true, owner: "vagrant", group: "www-data", mount_options: ["dmode=775,fmode=775"]
    end




    # Install All The Configured Nginx Sites
    if defined?(settings["sites"]) && settings["sites"]!=nil then
        settings["sites"].each do |site|
          config.vm.provision "shell" do |s|
              s.inline = "bash /vagrant/scripts/apache.sh $1 $2"
              s.args = [site["map"], site["to"]]
          end
        end
    end




    settings["bashRun"].each do |script|
        config.vm.provision :shell, :path => "bash/"+script
    end



  end
end
