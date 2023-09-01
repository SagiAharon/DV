#!/bin/bash
#add fix to exercise2 here


sudo sed -i 's/127.0.0.4 www.ascii-art.de/127.0.0.4 www.ascii-art.de:443/g' /etc/hosts

 sudo service apache2 restart
