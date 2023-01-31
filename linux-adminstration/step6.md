In the echo system of Linux OS, Files properties management are categorized in two.

  1. File Ownerships
  2. File Permissions 


When a file created inside a system, that file has to be associated to a `user` which is **Owner** and also a `group` which is **Group Owner**.

When we create a file the ownerships to that file is getting the information from the user whom created that file. 

You can check the ownerships of a file using `ls -l` command.

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

One more thing from the above situation is we are using two commands to change the owner and group, Where as we can do that with one single command.

`
chown centos:devops sample.txt
ls -l sample.txt
chown root:root sample.txt 
ls -l sample.txt 
`{{execute}}


----

Permissions of a file telling that which owner can do what.

The operations performed on the file are 
  1. read (`r`)
  2. write (`w`)
  3. execute (`x`)

Owners of a file are three
  1. File Owner (`u`)
  2. Group Owner (`g`)
  3. Others as Owners. (`o`) 


Following diagram illustrates the output of `ls -l` command showing the permissions.

![Permissions](https://github.com/devopstrainings/linux-basics-katakoda/raw/master/linux-adminstration/images/permissions.jpeg)

Now we can change those permissions using `chmod` command.

`
touch sample.txt 
ls -l sample.txt 
chmod ugo+rwx sample.txt 
ls -l sample.txt
`{{execute}}

Those options can be used in the way shown in the following diagram.

![Chmod Illustration](https://github.com/devopstrainings/linux-basics-katakoda/raw/master/linux-adminstration/images/permissions.jpeg)



