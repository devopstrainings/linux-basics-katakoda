## ____________________________________________

In many situations you might want to have only a certain number of lines from a file. You can use filter commands or a combination of them to get your work done.

Usually the filters are based on 

  1. Line Numbers
  2. Row Filters
  3. Column Filters

## Head Command

To filter the output based on line numbers and that to be from starting of the file then we use `head` command.

`Syntax: head <filename>`

By default `head` command gives you top `10` lines of the file but you can change it according to your needs.

`head /etc/passwd`{{execute}}

`head -n 5 /etc/passwd`{{execute}} 

It gives the first 5 lines of the file

## ____________________________________________

## Tail Command

`head` command gives you the top lines of the file however if you want to print the last lines you can use `tail` command

`Syntax: tail <filename>`

`tail` command will print last `10` lines and however you can change them using `-n` option.

`tail /etc/passwd`{{execute}}

`tail -n 5 /etc/passwd`{{execute}} 

It gives the last 5 lines of the file

## ____________________________________________

## Grep command

The `grep` filter searches a file for a particular pattern of characters, and displays all lines that contain that pattern. The pattern that is searched in the file is referred to as the regular expression (grep stands for globally search for regular expression and print out).

`Syntax: grep <word> <filename>`

`grep root /etc/passwd`{{execute}} 

It fetches all the lines which have the word root in them.

## ____________________________________________

## Awk Command

In some cases the content needs to be filtered based on the columns in that case we use `awk` command.

`Syntax: awk -F 'delimiter' '{print $column-number}' <filename>`

`awk -F : '{print $1}' /etc/passwd`{{execute}} 

It will print the first column of the file

`awk -F : '{print $1,$2}' /etc/passwd`{{execute}} 

It will print the first and second column of the file


## Additional things to learn.

Regular Expressions.

https://youtu.be/mpyCeSvGh-M


