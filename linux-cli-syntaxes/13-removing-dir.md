## ____________________________________________

## Removing Directories

To remove a directory we use `rmdir` command in linux. Removing directories also deletes all the files that the directory holds inside it.

`Syntax: rmdir <directory>`

`mkdir demo1`{{execute}}


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