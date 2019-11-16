#!/bin/bash

yum install httpd -y 
systemctl start httpd
curl -s https://raw.githubusercontent.com/devopstrainings/linux-basics-katakoda/master/linux-cli-syntaxes/assets/index.html >/var/www/html/index.html