### Create Directory

Creating Directory is same as  creating a Folder in your windows machine. You can create a directory using mkdir command.

Syntax: mkdir <directory>

`mkdir demo`{{execute}} This will create a new directory with the name demo. you can check using ls command.

`ls`{{execute}} Now you can see demo directory listed

`mkdir -p demo/new/item1`{{execute}} -p option is used to create the directory recursively even if the parent directory is missing

`mkdir demo1 demo2 demo3`{{execute}} you can also create multiple directories.

`ls`{{execute}}

### Remove Directory

To remove a directory we use rmdircommand in lunux. Removing directories also deletes all the files that the directory holds

Syntax: rmdir <directory>

`rmdir demo1`{{execute}}

`ls` check the output to see if the directory is deleted or not

`rmdir demo`{{execute}} It deletes the directory with the name demo but in this example you will see an error saying the directory is not empty.That is because we have already created  sub-directories named new and test inside demo.

`rm -r demo`{{execute}} To delete them recursively we use -r option.

`ls`{{execute}}

`rm -r demo2 demo3`{{execute}} We can also delete multiple directories this way

`ls`{{execute}}

### Note: You cannot use -r option with rmdir to use the -r we need to use rm command instead of rmdir.

### Copy Directories

Copying directories can be done with the same command cp that is used to copy the files but while copying the directories we need mention -r option.

Syntax: cp -r dir1 dir2 --> It copies all the contents of dir1 into dir2, if dir1 already exists dir1 will be copied inside dir2

`cp -r demo1 demo2`{{execute}} 

