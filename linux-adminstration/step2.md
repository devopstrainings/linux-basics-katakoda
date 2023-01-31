


We use our servers to run web applications, So these application is going to be a process in the system. 
These processes need to be run as a normal user rather than root user for security best practices. 
So to run our applications we need to know how to add a user, So lets learn about it. 

To add a user, Command is `useradd`.

`useradd john`{{execute}}

To check whether the user has been created or not, You can run the following command.

`id john`{{execute}}

The above command shows a number associated to the user which is **UID** (User ID) and which is unique number and it is allocated by system. But the same number also can be provided or managed by our own while creating the user or even after creating the user.


If this user needs to connect to the system then he needs a password, So let us assign a password to the user.

To set / reset a password to the user we use `passwd` command. ROOT user can set / reset the password of any user, whereas an individual user can only change his password by using the same command. `passwd` command prompts for entering the password and give an input and it sets as password to that user.

`passwd john`{{execute}}

Now, You can connect to the system using from another terminal and check whether the user can be able to login to the session or not.

You can run the following command to check the connection,

`echo ssh john@$(curl -s ifconfig.co)`{{execute}}


----

This user which we created so far is a real user, But also to run our software or applications inside the server we need those process associated to a user. In other words we don't run applications with root user directly and hence we create certain users in the system, so we call them as `Application Users / Functional Users`. 

The following command will run some services inside the system and you can check those process are ran by a certain user but not by a root user.

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


# ---

Optionally we can also add group first and then add the user as well. 

```shell
groupadd admins 
useradd -g admins steve 
id steve
```

In case if we need to organize the users and groups we take this approach. Usually the users and groups are now majorly part of SSO systems, so local users creating may not be a great idea.