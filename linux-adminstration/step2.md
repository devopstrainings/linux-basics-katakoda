


Most of the times we run our applications as a normal user, So we should be having some knowledge on how to add a user.

In RedHat family OS, You cannot add a user without having a group.

So first lets add a group before adding a user.

To add a user in Centos, We can use `groupadd` command. To that command we need to provide groupname as an argument.

`groupadd devops`{{execute}}

In above command `groupadd` is the command and where as `devops` is the group name.

Now the above command will not show any output saying that group has been created, So we need to verify that atleast that group has been created or not. To verify that a group has been created or not then run the following command.

`cat /etc/group`{{execute}} 

Or you can also pipe the output to `grep` command to apply filter of