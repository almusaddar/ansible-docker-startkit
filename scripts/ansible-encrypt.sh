#!/bin/bash

echo "encrypt ansible-vault"
ansible-vault encrypt inventories/production/host_vars/localhost --vault-password-file .vault_pass
