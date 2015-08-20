Vagrant.configure(2) do |config|
  config.vm.define "aws.vagrant", primary: true, autostart: true do |config_machine|
      #Assigning a provider
      config_machine.vm.provider :virtualbox do |virtualbox, override|
          virtualbox.name = "Vagrant AWS"
		  #override.vm.box = "chef/centos-7.0"
		  override.vm.box = "ubuntu/trusty64"
      end

      # Asinging a provisioner
      config_machine.vm.provision :ansible, run: "always" do |provisioner|
        provisioner.playbook = "build/playbook.yml"
        provisioner.extra_vars = "build/settings.yml" if File.file?("settings.yml")
      end
  end
end
