#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd 

sudo service httpd start
chkconfig httpd on

sudo yum intall telnet -y