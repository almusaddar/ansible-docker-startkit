#!/bin/bash

echo "decrypt ansible-vault"
ansible-vault decrypt inventories/production/host_vars/localhost --vault-password-file .vault_pass
