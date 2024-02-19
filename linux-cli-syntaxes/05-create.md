## ____________________________________________
## Creating Files

We can create files in multiple ways/commands in Linux. On a basic we will use `touch` command to create the file.

`Syntax: touch <filename>` 

`touch` command by default creates an empty file.

`touch file.txt`{{execute}}

To check the file created.

`ls -l`{{execute}} 

In the above `ls` command output you can see the file is an empty size file by referring the fifth colum.

`touch` command can create multiple files at a single go as shown.

`touch sample notes.txt lambda.py`{{execute}} 

To check the file created.

`ls -l`{{execute}} 


## Important Takeaways:

In Linux OS, there is no file-extensions. Extensions are given only for user understanding.

## ____________________________________________
## Creating Directories

Creating Directory is same as creating a Folder in your windows machine. You can create a directory using `mkdir` command.

`mkdir demo`{{execute}}

This will create a new directory with the name `demo`. you can check using `ls` command.

`ls`{{execute}}

Now you can see demo directory listed.


## Important Takeaways:

In Linux OS, the filenames are case-sensitive, Meaning `demo` is different with `Demo`. However, in Windows both are same.

