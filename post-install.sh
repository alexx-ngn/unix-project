#!/bin/bash

git clone https://github.com/alexx-ngn/unix-project /home/alex/unix-project
mkdir /home/alex/backups
chown -R alex:alex /home/alex
ansible-galaxy collection install community.docker
ansible-playbook /home/alex/unix-project/ansible/playbook.yml
cp /home/alex/unix-project/backup.service /etc/systemd/system/
cp /home/alex/unix-project/backup.timer /etc/systemd/system/
systemctl enable --now backup.timer
