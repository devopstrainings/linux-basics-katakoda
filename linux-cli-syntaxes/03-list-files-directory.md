## ____________________________________________

## List Files

In windows OS you generally see the list of files when you open a particular folder, But Linux is mostly command line and hence you may not see the files by default. Hence, you need to execute a command to check the list of files.

`ls` is a Linux shell command that lists directory contents of files and directories. Some practical examples of ls command are shown below.

`Syntax: ls <Options> <Path>`

Note that `ls` command works without an input i.e both the options and path are optional. It works with or without them.

`ls -ld /opt`{{execute}}

Get list of files and directories but it may not show hidden files.

`ls`{{execute}} 

Get list of hidden files and directories.

`ls -A`{{execute}}

Get list of files with long format, usually shows properties of a file

`ls -l`{{execute}} 

 We can combine multiple options as well. 

`ls -Al`{{execute}}

