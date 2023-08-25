


We use our servers to run web applications, So these application is going to be a process in the system.
These processes need to be run as a normal user rather than root user for security best practices.
So to run our applications as normal user, so we need to know how to add a user.

To add a user, Command is `useradd`.

`useradd sample`{{execute}}

To check whether the user has been created or not, You can run the following command.

`id sample`{{execute}}

The above command shows a number associated to the user which is **UID** (User ID) and which is unique number and it is allocated by system.
Usually for application Users which are also called as functional users will not have passwords as per security standards of CIS Benchmark with in organizations. 

----
Lets try to run the some well known services that are widely used in market and lets find how they are running the services whether as a root user or normal user.

`curl -s https://raw.githubusercontent.com/devopstrainings/linux-basics-katakoda/master/linux-adminstration/files/daemon-services.sh | sudo bash `{{execute}}

You can check the process of some system services runs as a normal user but not as a root user.

`ps -ef | grep httpd`{{execute}}

`ps -ef | grep tomcat`{{execute}}

`ps -ef | grep mariadb`{{execute}}

# ----

