## ____________________________________________

## Pipes

Pipes are used to send the output of one command to another command without storing the content anywhere physically on disk.

      Syntax :  com1 | com2

Ex:
  `cat /etc/passwd | grep root`{{execute}}

**Note**: All the commands will not accept inputs over pipes. In case if we need to take the input then we take the help of `xargs` command.

`touch sample.txt`{{execute}}

`ls`{{execute}}

`echo sample.txt | rm -f `{{execute}}

`ls`{{execute}}

Now you can use the `xargs` command.

`echo sample.txt | xargs rm -f`{{execute}}

`ls`{{execute}}