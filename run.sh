#!/bin/bash

if [ ! -e /etc/ansible ]; then
    echo "Ansible is not installed, installing it now"

    sudo apt-get install -y software-properties-common
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update && apt-get install -y ansible
fi

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i ./hosts ./playbook.yml