


Most of the times we run our applications as a normal user, So we should be having some knowledge on how to add a user.

In RedHat family OS, You cannot add a user without having a group.

So first lets add a group before adding a user.

To add a group in CentOS, We can use `groupadd` command. To that command we need to provide groupname as an argument.

`groupadd devops`{{execute}}

In above command `groupadd` is the command and where as `devops` is the group name.

Now the above command will not show any output saying that group has been created, So we need to verify that atleast that group has been created or not. To verify that a group has been created or not can be verified by checking a system file and its content.

`cat /etc/group`{{execute}} 

Or you can also pipe the output to `grep` command to apply filter of out search as well.

`cat /etc/group | grep devops`{{execute}}

The above command showed the group has been created and also it has a number associated to it which is **GID** called as Group ID, which is a unique number associated to a group. We can also customize those numbers while creating the group or even after creating the group.


Now the group is ready and we can create a User now.

To add a user, Command is `useradd`.

`useradd -g devops john`{{execute}}

In the above command `useradd` is the command to add user, `-g devops` is an option instructing the `useradd` command to add a user in `devops` group and `john` is the username.


Alike `groupadd` command `useradd` also will not show any output on the screen showing that user has been created. So to check whether the user has been created or not, You can run the following command.

`id john`{{execute}}

The above command shows a number associated to the user which is **UID** (User ID) and which is unique number and it is allocated by system. But the same number also can be provided or managed by our own while creating the user or even after creating the user.


Generally the user primarily belongs to one group in system and at the same time he can be part of multiple groups as well. But those groups are called as supplementary groups.

To add user to multiple groups..

`
groupadd admins
`{{execute}}

`
usermod -a -G admins john 
`{{execute}}

You can check all his groups information using the same `id` command.

`id john`{{execute}}

If this user needs to connect to the system then he needs a password, So let us assign a password to the user.

To set / reset a password to the user we use `passwd` command. ROOT user can set / reset the password of any user, whereas an individual user can only change his password by using the same command. `passwd` command prompts for entering the password and give an input and it sets as password to that user.

`passwd john`{{execute}}

Now, You can connect to the system using from another terminal and check whether the user can be able to login to the session or not.

You can run the following command to check the connection,

`echo ssh john@$(curl -s ifconfig.co)`{{execute}}


----

This user which we created so far is a real user, But also to run our software or applications inside the server we need those process associated to a user. In other words we don't run softwares or applications with root user directly and hence we create certain users in the system and it OS terminology we called them as `Daemon Users`. This helps in organizing the operations and as well as improvising the security.

The following command will run some services inside the system and you can check those process and we will find those are been ran by a certain user but not by a root user.

`curl -s https://raw.githubusercontent.com/devopstrainings/linux-basics-katakoda/master/linux-adminstration/files/daemon-services.sh | bash `{{execute}}

You can check the process of some system services runs as a normal user but not as a root user.

`ps -ef | grep httpd`{{execute}}

`ps -ef | grep tomcat`{{execute}}

`ps -ef | grep mariadb`{{execute}}

Even though those services are started by a ROOT user, Yet the service runs associated by a normal user but not a ROOT User.

# ----

Being a root user you can switch from one user to another user without any password. At the same time a normal user also can switch from one user to another but with a password. 

Either of the way if you want to switch then use a command `su`

`su - john`{{execute}}


# Additional Tasks for Student Practice

  1. Create a group with custom *GID*
  2. Create a user with custom *UID*
  3. After creating user try to change the *GID*
  4. Try to remove a supplementary group to a user