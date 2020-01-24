## ____________________________________________

## Renaming/Moving a File

In Linux, in order to change the name of a file we use `mv` command.

`Syntax: mv <source-file> <destination-file>`

`mv notes.txt note.txt`{{execute}}

You can check whether the file has been renamed or not by referring `ls` command output.

`ls`{{execute}}

**NOTE:** Unlike Windows, Linux filesystem are Case-Sensitive ones, Meaning the file `note.txt` & `NOTE.txt` can be referred as two different files. But windows `FAT` & `NTFS` filesystem are Case-Insensitive, Meaning the file `note.txt` & `NOTE.txt` are same files and you cannot create multiple files with same name.

`mv note.txt NOTE.txt`{{execute}}

You can check whether the file has been renamed or not by referring `ls` command output.

`ls`{{execute}}

**NOTE:** If destination exists then it will overwrite the file and in some cases it will ask you for a prompt **(yes/no)** to overwrite the file or not.

`mv` command intention is to move the file from one location to another yet we use mainly to rename the files as well.


## ____________________________________________

## Shell Shortcuts.



