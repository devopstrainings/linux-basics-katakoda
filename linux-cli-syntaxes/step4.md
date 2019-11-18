### Creating Files

We can create files in multiple ways/commands in Linux.As a basic we will use `touch` command to create the file.

`Syntax: touch <filename>` 

This by default creates an empty file.

`touch sample notes.txt lambda.py`{{execute}} 

touch command can create multiple files at a single go as shown

`ls`{{execute}} 

Now you can use ls command to check the list of newly created files that you have just created using touch.

### Removing Files

To remove files we have `rm`command , We can aslo use `unlink` command which does the same thing yet rm is widely preffered and used command.

`Syntax: rm <filename>`

`rm sample`{{execute}} 

It may ask you for a prompt (yes/no) to remove the files. You can supress the prompt by passing -f option in the command.

`ls`{{execute}} 

Now again when you list the files using ls command the sample file should be gone as you have removed it.

### Note: Be careful while removing a file as it deletes all the contents of the file and retireving the lost data is not possible in most of the cases.