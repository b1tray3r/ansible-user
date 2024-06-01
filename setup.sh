#!/bin/bash

# Install Ansible

sudo apt install git ansible -y

# Check for ANSIBLE_USER_PASSWORD environment variable

if [ -z "$ANSIBLE_USER_PASSWORD" ]; then
	# Ask for the ansible user password
	echo "Enter the ansible user password: "
	read -s ANSIBLE_USER_PASSWORD
fi

# Execute the playbook
ansible-pull -l localhost -U https://github.com/b1tray3r/ansible-user.git -e "SEMAPHORE_PASSWORD=$ANSIBLE_USER_PASSWORD" install.yml
