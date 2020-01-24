## ____________________________________________

## Create Directories

Creating Directory is same as creating a Folder in your windows machine. You can create a directory using `mkdir` command.

`mkdir demo`{{execute}} 

This will create a new directory with the name `demo`. you can check using `ls` command.

`ls`{{execute}} 

Now you can see demo directory listed.

But to determine `demo` is a directory, better always use `ls -l` command output. 
Directories start with `d` character of `ls -l` output.

`mkdir -p demo/new/item1`{{execute}} 

`-p` option is used to create the directory recursively even if the parent directory is missing

`mkdir demo1 demo2 demo3 demo4`{{execute}} 

You can also create multiple directories.

`ls`{{execute}}


## Additional things to learn.

There are total `seven` type of files in Linux. Explore each of them. `Directory` and `regular file` is two of them.

Types: Directory, Regular File, B