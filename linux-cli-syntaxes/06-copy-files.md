## ____________________________________________
## Copying Files

In Linux to copy a file we have `cp` command. Alternatively we have `rsync` but mostly we prefer to use `cp` command in general.

`Syntax: cp <source-file> <destination-file>`

`cp notes.txt pages.txt`{{execute}}

You can check whether the file has been copied or not by referring `ls` command output.

`ls`{{execute}}

**NOTE:** If destination exists it will overwrite the file and in some cases it will ask you for a prompt **(yes/no)** to overwrite the file or not.
