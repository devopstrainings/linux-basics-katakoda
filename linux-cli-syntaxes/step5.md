### Copying Files

To copy a file we have cp command. Alternatively we have rsync but mostly e prefer to use cp command in general.

Syntax: cp source-file destination-file

`cp notes.txt lambda.py`{{execute}}

If destination exists it will overwrite the file and in some cases it will ask you for a prompt (yes/no) to overwrite the file or not.

### Renaming a File

Inorder to change the name of a file we use mv command

Syntax: mv source-file destination-file

`mv notes.txt sample`{{execute}} 

If destination exists it will overwrite the file and in some cases it will ask you for a prompt (yes/no) to overwrite the file or not.

mv command intention is to move the file from one location to another yet we use mainly to rename the files

`ls`{{execute}} you can observe that the notes.txt file has been renamed to sample.