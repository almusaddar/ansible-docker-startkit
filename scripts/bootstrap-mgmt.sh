#!/usr/bin/env bash

echo "Provisioning Staging Vagrant Machine"
echo "Installing Ansible and other packages for testing and dry-run"
apt-get -y -qq install software-properties-common > /dev/null 2>&1
apt-add-repository -y  ppa:ansible/ansible > /dev/null 2>&1
apt-get -qq -y update > /dev/null 2>&1
apt-get -y -qq install aptitude ansible python-pip python-apt > /dev/null 2>&1
pip2 install ansible-lint > /dev/null 2>&1
