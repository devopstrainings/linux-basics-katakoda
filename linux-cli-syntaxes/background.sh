#!/bin/bash

yum install httpd -y 
systemctl start httpd
curl -s 