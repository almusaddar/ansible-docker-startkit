#!/bin/bash

# Need sudo apt-get install aptitude python-apt
echo "===> ansible-syntax-check"
ansible-playbook --syntax-check site.yml -i inventories/staging/hosts.yml
echo "Done!"
echo "===> ansible-lint"
ansible-lint site.yml
echo "Done!"
echo "===> ansible dry mode"
ansible-playbook --check site.yml -i inventories/staging/hosts.yml
echo "Done!"
