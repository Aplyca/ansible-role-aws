#!/bin/bash
# Test AWS provisiones with Ansible

echo "Starting VM and provision with role"
vagrant destroy -f
vagrant up
