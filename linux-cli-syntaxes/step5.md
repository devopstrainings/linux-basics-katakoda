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

### Change Directory

To change the working directory from one location to another we use cd command

Syntax: cd <directory>

`cd /bin`{{execute}} you will switch to /bin directory

`pwd`{{execute}} you can check your current working directories using pwd command

`cd`{{execute}} simple cd command will take you to the home directory of the user

`pwd`{{execute}} observe the output

`pwd`{{execute}}

`cd -`{{execute}} This command will take you the previous directory that you were using.

`cd ..`{{execute}} .. means parent directory and it takes you to the parent directory of the current directory


### Single dot (.)

Dot in linux indicates present working directory , you can use it in the commands which we have used so far

`ls`{{execute}} observe the names of the files

We will try cp command with the . option .

`cp /root/sample .`{{execute}}

`ls`{{execute}} Now if you compare the ouput from the previous ls you will be able to see the file with name sampke 