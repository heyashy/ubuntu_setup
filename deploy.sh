#!/bin/bash
export ANSIBLE_CALLBACK_WHITELIST='oneline,yaml,profile_tasks,timer'
export ANSIBLE_CALLBACKS_ENABLED='timer'
ansible-playbook -i hosts playbook.yml --ask-become-pass