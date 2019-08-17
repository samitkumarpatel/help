### vagrant

* ssh
If we dont specify the ssh key details on Vagrantfile, vagrant will create a ssh private key and keep on the below location
```
~/vbox>cd .vagrant/machines/default/virtualbox
private_key - is the key file
```

* Vagrantfile option for hostname, specify memory and run a shell script along with vagrant up --provision command
```
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.hostname="custom.hostname"
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  
  #config.vm.provision "shell", inline: <<-SHELL
  #  apt-get update
  #  sudo apt-get install openjdk-8-jdk -y
  #
  #SHELL
  

```
