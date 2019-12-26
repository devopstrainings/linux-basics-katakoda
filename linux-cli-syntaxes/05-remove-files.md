# #

## Removing Files

In Linux to remove files we have `rm`command, We can also use `unlink` command which does the same thing yet `rm` is widely preferred and used command.

`Syntax: rm <filename>`

`rm sample`{{execute}} 

You can check whether the file is removed or not..

`ls`{{execute}}

It may ask you for a prompt `(yes/no)` **[Not all the times]** to remove the files. You can suppress the prompt by adding `-f` option in the command.

`rm -f notes.txt`{{execute}}

`ls`{{execute}} 

Now again when you list the files using ls command the sample file should be gone as you have removed it.

### Note: Be careful while removing a file as it deletes all the contents of the file and retireving the lost data is not possible in most of the cases.