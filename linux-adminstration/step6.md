In the echo system of Linux OS, Files properties management are categorized in two.

  1. File Ownerships
  2. File Permissions 


When a file created inside a system, that file has to be associated to a `user` which is **Owner** and also a `group` which is **Group Owner**.

You can check the permissions of a file using `ls -l` command.

`
touch sample.txt 
ls -l 
`{{execute}}

When we want to change the ownership we use `chown` command.
When we want to change the group ownership then we use `chgrp` command.

`
chown centos sample.txt
ls -l 
`{{execute}}

When we create a file the permissions to that file is getting the information from the user whom created that file. 