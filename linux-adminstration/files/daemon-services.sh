#!/bin/bash 

yum install httpd tomcat mariadb-server -y &>/dev/null 
systemctl start httpd 
systemctl start tomcat 
systemctl start mariadb 

