Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.99.110"

  config.vm.provider "virtualbox" do |v|
    v.name = "bptest"
  end
  
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "play.yml"
    ansible.verbose = "vvvv"
    ansible.host_key_checking = false
  end
end
