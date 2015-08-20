#!/bin/bash
# Provision MariaDB with ansible

echo "Installing Ansible"
DEBIAN_FRONTEND=noninteractive 
apt-get -y install software-properties-common &&
apt-add-repository -y ppa:ansible/ansible &&
apt-get update &&
apt-get install -y ansible &&

echo "Running provision"
ansible-playbook -i build/inventory build/playbook.yml --connection=local --extra-vars "@build/settings.yml" &&

echo "Removing packages no longer needed"
apt-get -y remove --purge software-properties-common
apt-get -y remove --purge ansible
apt-get -y autoremove
apt-get -y clean