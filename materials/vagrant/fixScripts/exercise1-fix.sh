#!/bin/bash
#add fix to exercise1 here


sudo sed -i 's/Require all denied/Require all granted/g' /etc/apache2/apache2.conf

sudo service apache2 restart


sudo sed -i 's/nameserver .*/nameserver 8.8.8.8/g' /etc/resolv.conf