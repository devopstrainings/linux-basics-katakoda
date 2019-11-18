### Reading the contents of a file

cat(concatenate) command is very frequently used in Linux. It reads data from the file and gives their content as output. It helps us to create, view, concatenate files. So let us see some frequently used cat commands.

Syntax: cat <filename>

`cat /etc/passwd`{{execute}} It shows the content of the file

`cat -n /etc/passwd`{{execute}} It shows the content of the file along with the line numbers

`tac /etc/passwd`{{execute}} It displays the content of the file in reverse order.

### Filter commands

In many situations you might want to have only a certain number of lines from a file. You can use filter commands (head/tail) or a combination of them to get your work done.

Synatax: head <filename> By default head gives you top 10 lines of the file but you can change it according to your needs.


`head -n 5 /etc/passwd`{{execute}} It gives the first 5 lines of the file

head command gives you the top lines of the file however if you want to print the last lines you can use tail command

Syntax: tail <filename>

`tail -n 5 /etc/passwd`{{execute}} It gives the last 5 lines of the file

The grep filter searches a file for a particular pattern of characters, and displays all lines that contain that pattern. The pattern that is searched in the file is referred to as the regular expression (grep stands for globally search for regular expression and print out).In case if you want to get particul