# ThinLinc Ansible module

This repository provides an Ansible module for installing and setting
up ThinLinc clusters.

# Usage

What you need to do:

 0. Prepare target machines - install base system, set up ssh keys for
    passwordless logins from your user to root@machine.

 1. Copy inventory.template to inventory and enter the server names
    for each role.

 2. Test ansible with a simple ping action:

    ansible all -i inventory -m ping

 3. Place a ThinLinc Server bundle zip file in this folder.

 4. Update the group_vars/thinlinc file with the version, build number and server
    zip file name. This file also holds the settings used for tl-setup, so make
    sure to review them.

 5. Run ansible-playbook to download and install the ThinLinc server
    bundle on your servers:

    ansible-playbook -i inventory thinlinc-install.yml

# License

GPLv3. (See LICENSE)

# Contributions

Pull requests and issues are welcome.
