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
