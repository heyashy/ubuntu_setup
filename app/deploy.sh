#!/bin/bash
# export ANSIBLE_CALLBACK_WHITELIST='oneline,yaml,profile_tasks,timer'
# export ANSIBLE_CALLBACKS_ENABLED='timer'
ansible-playbook -i hosts playbook.yml --ask-become-pass

# check the current shell and switch to zsh if it's not already zsh
if [ -n "$ZSH_VERSION" ]; then
  echo "You are already using zsh"
  source ~/.zshrc
else
  echo "Switching to zsh"
  zsh
fi

figlet -f slant "SUCCESS" | lolcat
echo "The system has been initialized successfully" | lolcat
echo "------------------------------------------------" | lolcat
echo -e "\e[33mRemember to initialize aws and gcloud cli tools\e[0m"
