### Change Directory



### Single dot (.)

Dot in linux indicates present working directory , you can use it in the commands which we have used so far

`ls`{{execute}} observe the names of the files

We will try cp command with the . option 

`cp /root/sample .`{{execute}}

`ls`{{execute}} 

Now if you compare the ouput from the previous ls you will be able to see the file with name sample in the present directory.

### Create Directory




### Copy Directories

Copying directories can be done with the same command `cp` that is used to copy the files but while copying the directories we need mention `-r` option.

`Syntax: cp -r dir1 dir2` --> It copies all the contents of dir1 into dir2, if dir1 already exists dir1 will be copied inside dir2

`cp -r demo1 demo2`{{execute}} 

## Moving a Directory

Moving directories or renaming directories can be done using `mv` command.

`Syntax: mv source destination`

1. If destination doesn't exist it renames the directory 
2. If destination exists the source will be moved into the directory 

`mv demo4 renaming`{{execute}} 

This will rename the demo4 as renaming 

`ls`{{execute}}

### Remove Directory

To remove a directory we use `rmdir` command in lunux. Removing directories also deletes all the files that the directory holds

`Syntax: rmdir <directory>`

`rmdir demo1`{{execute}}

`ls`{{execute}} 

check the output to see if the directory is deleted or not

`rmdir demo`{{execute}} 

It deletes the directory with the name demo but in this example you will see an error saying the directory is not empty.That is because we have already created  sub-directories named new and test inside demo.

`rm -r demo`{{execute}} 

To delete them recursively we use -r option.

`ls`{{execute}}

`rm -r demo2 demo3`{{execute}} 

We can also delete multiple directories this way

`ls`{{execute}}

### Note: You cannot use -r option with rmdir to use the -r we need to use rm command instead of rmdir.