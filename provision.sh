#!/bin/sh

if [ $# -eq 0 ]; then
    echo "The name of the VM must be specified"
    exit
fi

export ANSIBLE_ROLES_PATH=`pwd`/roles
ansible-playbook -e "@extra_vars.yml" -e "vm_hostname=$1" ./playbooks/create-vm.yml
