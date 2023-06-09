# Guide to Set Up a WordPress Development Environment using Vagrant
- This guide provides instructions for setting up a local development environment for WordPress using Vagrant. This environment allows developers to build and test WordPress websites locally before deploying them to a production server.

# Prerequisites
- Before proceeding with the installation, make sure the following software is installed on your computer:

* Vagrant
* VirtualBox

# Installation
1. Clone this repository to your local machine.
2. Navigate to the cloned directory and run the vagrant up command to start the virtual machine.
3. Wait for the virtual machine to download and install all the required packages and software.
4. Once the virtual machine is up and running, open a web browser and go to http://localhost:8080. You should see the WordPress welcome page.
5. Log in to WordPress with the default credentials: Username: admin Password: password
6. You're now ready to start building your WordPress website!

# Customization
- To customize your WordPress installation, you can modify the bootstrap.sh and Vagrantfile files located in the setup directory. The bootstrap.sh file contains the shell commands that are executed when the virtual machine is provisioned, while the Vagrantfile file contains the configuration for the virtual machine.

# Example modifications
* To change the WordPress database name, modify the line mysql -uroot -proot -e 'create database IF NOT EXISTS \wordpress`;in thebootstrap.sh` file.
* To change the amount of memory allocated to the virtual machine, modify the line vb.memory = "2048" in the Vagrantfile file.
* To change the IP address of the virtual machine, modify the line config.vm.network "private_network", ip: "192.168.56.16" in the Vagrantfile file.

# Shutting down the virtual machine
- To shut down the virtual machine, run the vagrant halt command from the terminal in the same directory as the Vagrantfile.

* Conclusion
- With this guide, you can set up a local development environment for WordPress using Vagrant. This environment provides an isolated and customizable environment for building and testing WordPress websites before deployment. Happy coding!