#!/bin/bash

ansible-playbook -i hosts -l master-nfs 00-crontroller-user.yaml
ansible-playbook -i hosts -l worker 01-ansible-user.yaml