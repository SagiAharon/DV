#!/bin/bash
#add fix to exercise5-server1 here

echo "Host *" | sudo tee -a /etc/ssh/sshd_config
echo "    StrictHostKeyChecking no" | sudo tee -a /etc/ssh/sshd_config

ssh-keygen -t rsa #Generating public/private rsa key pair
ssh-copy-id vagrant@server2

