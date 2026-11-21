#!/bin/bash

component=$1
environment=$2
dnf install ansible -y
cd /home/ec2-user
git clone https://github.com/Medasanicharan/06-ansible-roboshop-vault.git
cd 06-ansible-roboshop-vault
git pull
ansible-playbook main.yaml -e component=$1 -e env=$2
# ansible-pull -U https://github.com/Medasanicharan/06-ansible-roboshop-vault.git -e component=$1 -e env=$2 main.yaml