## ____________________________________________

## Removing Directories

To remove a directory we use `rmdir` command in linux. Removing directories also deletes all the files that the directory holds inside it.

`Syntax: rmdir <directory>`

`mkdir demo1`{{execute}}
`ls`{{execute}}

`rmdir demo1`{{execute}}
`ls`{{execute}} 

Check the output to see if the directory is deleted or not.


It deletes the directory with the name `demo1` but in the following example you will see an error saying the directory is not empty. That is because we have already created sub-directories named `new` and `test` inside `demo`.

`mkdir -p demo1/{new,test}`{{execute}}
`rmdir demo1`

`rm -r demo`{{execute}} 

To delete them recursively we use -r option.

`ls`{{execute}}

`rm -r demo2 demo3`{{execute}} 

We can also delete multiple directories this way

`ls`{{execute}}

### Note: You cannot use -r option with rmdir to use the -r we need to use rm command instead of rmdir.