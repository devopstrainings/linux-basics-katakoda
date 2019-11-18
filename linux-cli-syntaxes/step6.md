### Change Directory

To change the working directory from one location to another we use `cd`command

`Syntax: cd <directory>`

`cd /bin`{{execute}} 

you will switch to /bin directory

`pwd`{{execute}} 

you can check your current working directory using `pwd` command

`cd`{{execute}} 

simple `cd` command will take you to the home directory of the user

`pwd`{{execute}} 

observe the output

`cd -`{{execute}} This command will take you the previous directory that you were using.

`cd ..`{{execute}} .. means parent directory and it takes you to the parent directory of the current directory

`pwd`{{execute}}

### Single dot (.)

Dot in linux indicates present working directory , you can use it in the commands which we have used so far

`ls`{{execute}} observe the names of the files

We will try cp command with the . option 

`cp /root/sample .`{{execute}}

`ls`{{execute}} 

Now if you compare the ouput from the previous ls you will be able to see the file with name sample in the present directory.

### Create Directory

Creating Directory is same as  creating a Folder in your windows machine. You can create a directory using mkdir command.

Syntax: mkdir <directory>

`mkdir demo`{{execute}} This will create a new directory with the name demo. you can check using ls command.

`ls`{{execute}} Now you can see demo directory listed

`mkdir -p demo/new/item1`{{execute}} -p option is used to create the directory recursively even if the parent directory is missing

`mkdir demo1 demo2 demo3 demo4`{{execute}} you can also create multiple directories.

`ls`{{execute}}


### Copy Directories

Copying directories can be done with the same command cp that is used to copy the files but while copying the directories we need mention -r option.

Syntax: cp -r dir1 dir2 --> It copies all the contents of dir1 into dir2, if dir1 already exists dir1 will be copied inside dir2

`cp -r demo1 demo2`{{execute}} 

## Moving a Directory

Moving directories or renaming directories can be done using mv command.

Syntax: mv source destination 

1. If destination doesn't exist it renames the directory 
2. If destination exists the source will be moved into the directory 

`mv demo4 renaming`{{execute}} This will rename the demo4 as renaming 

`ls`{{execute}}

### Remove Directory

To remove a directory we use rmdircommand in lunux. Removing directories also deletes all the files that the directory holds

Syntax: rmdir <directory>

`rmdir demo1`{{execute}}

`ls`{{execute}} check the output to see if the directory is deleted or not

`rmdir demo`{{execute}} It deletes the directory with the name demo but in this example you will see an error saying the directory is not empty.That is because we have already created  sub-directories named new and test inside demo.

`rm -r demo`{{execute}} To delete them recursively we use -r option.

`ls`{{execute}}

`rm -r demo2 demo3`{{execute}} We can also delete multiple directories this way

`ls`{{execute}}

### Note: You cannot use -r option with rmdir to use the -r we need to use rm command instead of rmdir.