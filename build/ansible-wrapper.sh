#!/bin/bash

set -ex

ANSIBLE_PLAYBOOK=playbooks/$1.yml
ANSIBLE_BIN=/usr/bin/ansible-playbook
ANSIBLE_KEY=~/.ssh/example.pem
#ANSIBLE_HOSTS=config/ec2.py
#EC2_INI_PATH=config/ec2.ini
ANSIBLE_ENVIRONMENT=$2
ANSIBLE_USER=root

export ANSIBLE_CONFIG=config/ansible.cfg
export ANSIBLE_FORCE_COLOR=true
#chmod 755 ${ANSIBLE_HOSTS}

echo Running playbook ${ANSIBLE_PLAYBOOK}...

${ANSIBLE_BIN}                                       \
  ${ANSIBLE_PLAYBOOK}                                \
  --private-key ${ANSIBLE_KEY}                       \
  --user ${ANSIBLE_USER}                             \
  --inventory-file ${ANSIBLE_HOSTS}                  #\
#  --extra-vars ""
