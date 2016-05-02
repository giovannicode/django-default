VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/main.yml"
  end

  config.vm.synced_folder "./", "/app/src", owner: 1010, group: 1020

  config.vm.network "forwarded_port", guest: 8000, host: 8000
end
