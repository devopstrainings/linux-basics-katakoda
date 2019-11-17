


Most of the times we run our applications as a normal user, So we should be having some knowledge on how to add a user.

In RedHat family OS, You cannot add a user without having a group.

So first lets add a group before adding a user.

To add a group in Centos, We can use `groupadd` command. To that command we need to provide groupname as an argument.

`groupadd devops`{{execute}}

In above command `groupadd` is the command and where as `devops` is the group name.

Now the above command will not show any output saying that group has been created, So we need to verify that atleast that group has been created or not. To verify that a group has been created or not can be verified by checking a system file and its content.

`cat /etc/group`{{execute}} 

Or you can also pipe the output to `grep` command to apply filter of out search as well.

`cat /etc/group | grep devops`{{execute}}

The above command showed the group has been created and also it has a number associated to it which is **GID** called as Group ID, which is a unique number associated to a group. We can also customize those numbers while creating the group or even after creating the group.


Now the group is ready and we can create a User now.

To add a user, Command is `useradd`.

`useradd -g devops demo`