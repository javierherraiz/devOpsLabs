#!/bin/bash

# añadir tantas líneas como sean necesarias para el correcto despligue
ansible-playbook -i hosts -l master-nfs 00-instalar-kubernetes-master.yaml
ansible-playbook -i hosts -l worker playbook 01-instalar-kubernetes-worker.yaml