## ____________________________________________

## Removing Directories

To remove a directory we use `rmdir` command in linux. Removing directories also deletes all the files that the directory holds inside it.

`Syntax: rmdir <directory>`

`mkdir demo1`{{execute}}

`ls`{{execute}}

`rmdir demo1`{{execute}}

`ls`{{execute}} 

Check the output to see if the directory is deleted or not.


It deletes the directory with the name `demo1` but in the following example you will see an error saying the directory is not empty. That is because we have already created sub-directories named `new` and `test` inside `demo1`.

`mkdir -p demo1/{new,test}`{{execute}}

`rmdir demo1`{{execute}}

To delete them recursively we use -r option.

`rm -r demo1`{{execute}} 

`ls`{{execute}}

Sometimes you might be prompted for `(yes/no)` to delete the files, and if we want to make a forceful delete without prompting then we use `-f` option.

`mkdir -p demo1/{new,test}`{{execute}}

`ls`{{execute}}

`rm -r -f demo1`{{execute}}

`ls`{{execute}}

**Note:** Once the files are removed there is no way of retrieving them.
