## ____________________________________________

## Head Command

In many situations you might want to have only a certain number of lines from a file. You can use filter commands (head/tail) or a combination of them to get your work done.

`Synatax: head <filename>`

 By default head gives you top 10 lines of the file but you can change it according to your needs.


`head -n 5 /etc/passwd`{{execute}} 

It gives the first 5 lines of the file

### Tail Command

head command gives you the top lines of the file however if you want to print the last lines you can use `tail` command

`Syntax: tail <filename>`

`tail -n 5 /etc/passwd`{{execute}} 

It gives the last 5 lines of the file

### Grep command

The `grep` filter searches a file for a particular pattern of characters, and displays all lines that contain that pattern. The pattern that is searched in the file is referred to as the regular expression (grep stands for globally search for regular expression and print out).

`Syntax: grep <word> <filename>`

`grep root /etc/passwd`{{execute}} 

It fetches all the lines which have the word root in them.

### Awk Command

In some cases the content needs to be filtered based on the columns in that case we use awk command.

`Syntax: awk -F 'delimiter' '{print $column-number}' <filename>`

`awk -F : '{print $1}' /etc/passwd`{{execute}} 

It will print the first column of the file

`awk -F : '{print $1,$2}' /etc/passwd`{{execute}} 

It will print the first and second column of the file



