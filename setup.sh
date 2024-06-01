#!/bin/bash

# Install Ansible

sudo apt install git ansible -y

# Check for ANSIBLE_USER_PASSWORD environment variable

if [ -z "$ANSIBLE_USER_PASSWORD" ]; then
	# Ask for the ansible user password
	echo "Enter the ansible user password: "
	read -s ANSIBLE_USER_PASSWORD
fi

# If the ansible user password is not set, exit
if [ -z "$ANSIBLE_USER_PASSWORD" ]; then
	echo "The ansible user password is required"
	exit 1
fi

# Execute the playbook
ansible-pull -l localhost -U https://github.com/b1tray3r/ansible-user.git -e "ANSIBLE_USER_PASSWORD=$ANSIBLE_USER_PASSWORD" install.yml
