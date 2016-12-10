# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "mail" do |mail|
    mail.vm.box = "ubuntu/xenial64"
    mail.vm.hostname = 'mail'
    mail.vm.network :private_network, ip: "192.168.13.13"
    mail.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "mail"]
    end
    # Disable the new default behavior introduced in Vagrant 1.7, to
    # ensure that all Vagrant machines will use the same SSH key pair.
    # See https://github.com/mitchellh/vagrant/issues/5005
    # mail.ssh.insert_key = false
    mail.vm.provision :shell, path: "scripts/bootstrap-mgmt.sh"
    # mail.vm.provision "ansible" do |ansible|
    #   ansible.verbose = "v"
    #   ansible.playbook = "site.yml"
    #   ansible.inventory_path = "./vagrant"
    #   ansible.raw_arguments  = [
    #     "--syntax-check",
    #     "--private-key=/home/.../.vagrant/machines/.../private_key"
    #   ]
    # end
  end
end
