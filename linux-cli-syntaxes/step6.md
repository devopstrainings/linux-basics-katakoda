### Create Directory

Creating Directory is same as  creating a Folder in your windows machine. You can create a directory using mkdir command.

Syntax: mkdir <directory>

`mkdir demo`{{execute}} This will create a new directory with the name demo. you can check using ls command.

`ls`{{execute}} Now you can see demo directory listed

`mkdir -p demo/new/item1`{{execute}} -p option is used to create the directory recursively even if the parent directory is missing

`mkdir demo1 demo2`{{execute}} you can also create multiple directories.

`ls`{{execute}}

### Remove Directory

To remove a directory we use rmdircommand in lunux. Removing directories also deletes all the files that the directory holds

Syntax: rmdir <directory>

`rmdir demo`{{execute}} It deletes the directory with the name demo but in this example you will see an error saying the directory is not empty.That is because we have already created  sub-directories named new and test inside demo.

`rm -r demo`{{execute}} To delete them recursively we use -r option.

`ls`{{execute}}

`rm -r demo1 demo1`{{execute}} We can also delete multiple directories this way

`ls`{{execute}}