In the echo system of Linux OS, Files properties management are categorized in two.

  1. File Ownerships
  2. File Permissions 


When a file created inside a system, that file has to be associated to a `user` which is **Owner** and also a `group` which is **Group Owner**.

You can check the permissions of a file using `ls -l` command.

`
touch sample.txt 
ls -l sample.txt
`{{execute}}

When we want to change the ownership we use `chown` command.
When we want to change the group ownership then we use `chgrp` command.

To change ownership:

`
chown centos sample.txt
ls -l sample.txt
`{{execute}}


To change group ownership:

`
groupadd devops
chgrp devops sample.txt
ls -l sample.txt
`{{execute}}

In above situation you are dealing with a file, If that is a directory then use `-R` option along with both the commands.

One more thing from the above situation is we are using two commands to change the owner and group, Where as we can do that with one single command

`
chown centos:devops sample.txt
ls -l sample.txt
chown root:root sample.txt 
ls -l sample.txt 
`{{execute}}

