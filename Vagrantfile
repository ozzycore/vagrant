# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# require ymal module
require "yaml"

VAGRANTFILE_API_VERSION = "2"


# read ymal file
servers = YAML.load_file('servers-kvm.yaml')

# provision servers
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	# iterate through entries in ymal file
	servers.each do |server|
	  config.vm.define server["name"] do |nodeconfig|
		nodeconfig.vm.box = server["box"]
		nodeconfig.vm.hostname = server["hostname"]
        # Disable vagrant's default folder sync
        nodeconfig.vm.synced_folder '.', '/vagrant', disabled: true
		nodeconfig.vm.provider :libvirt do |libvirt|
            # CPU and RAM configuration
            libvirt.memory = server["ram"]
            libvirt.cpus = server["cpu"]
            # Configure storage block devices
            if server.has_key?("blks")
              for blk in server["blks"]
                libvirt.storage :file, 
                  :size => blk['size'].to_s
              end
            end
   		end
		# Configure networking
		if server.has_key?("nics")
		  for nic in server["nics"]
            # Configure bridge interface
            if nic.has_key?("device")
              nodeconfig.vm.network :public_network,
                :dev => "eno1",
                :mode => "bridge",
                :ip => nic['ip'].to_s
            # Configure hostonly interface
            else
              nodeconfig.vm.network :private_network,
                :ip => nic['ip'].to_s,
                :netmask => nic['netmask']
            end
          end
        end
      end
	end
end
