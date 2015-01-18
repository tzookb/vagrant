class Homestead
    def Homestead.configure(config, settings)
        # Configure The Box

        #box type
        config.vm.box = settings["box"] ||= "hashicorp/precise32"

        #box hostname
        config.vm.hostname = settings["hostname"] ||= "devServer"

        config.vm.provider "virtualbox" do |v|
            v.name = settings["virtualBoxName"] ||= "boxName"
        end

        # Configure A Private Network IP
        config.vm.network :private_network, ip: settings["ip"] ||= "192.168.10.10"


        # Register All Of The Configured Shared Folders
        unless settings['folders'].nil?
            settings["folders"].each do |folder|
                config.vm.synced_folder folder["map"], folder["to"], create: true, owner: "vagrant", group: "www-data", mount_options: ["dmode=775,fmode=775"]
            end
        end


        unless settings['bashRun'].nil?
            settings["bashRun"].each do |script|
                config.vm.provision :shell, :path => "bash/"+script
            end
        end



        # Install All The Configured Nginx Sites
        unless settings['sites'].nil?
            settings["sites"].each do |site|
                config.vm.provision "shell" do |s|
                    if site["type"] == "nginx"
                        s.inline = "bash /vagrant/scripts/nginx.sh $1 $2"
                    else
                        s.inline = "bash /vagrant/scripts/apache.sh $1 $2"
                    end
                    s.args = [site["map"], site["to"]]
                end
            end
        end

        # Create all Of the configured Databases
        unless settings['databases'].nil?
            settings["databases"].each do |db|
                config.vm.provision "shell" do |s|
                    s.path = "./scripts/create_mysql_db.sh"
                    s.args = [db]
                end
            end
        end


    end
end