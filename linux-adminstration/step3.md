

In companies even though we know the ROOT user password, We might not login directly with ROOT user. Usually that root user login is used only during the maintenances of the system or in some extreme cases. 

So we usually create users in the system and those users login to the system to perform or do some work like installing application or running application. But a normal user cannot do the admin activities and also as a standard practice we cannot login with root user. Hence we need an alternate option to login as a normal user but perform the work as root user. 

To gain the above scenario we need to use some Privilege Escalation tools and few of them are 
  1. SUDO 
  2. PowerBroker 
  3. Centrify... etc

You can refer this link.
https://www.sudo.ws/other.html

Out of lot many tools **SUDO** is one of the default and widely used tool. Hence we are discussing SUDO further now..

You can add some files under `/etc/sudoers.d` and sudo program will load them.

Sudoers configuration syntax looks like below:

`user-name    MACHINE=COMMANDS` 

`ALL` is a default keyword which is available in sudoers to add all the commands access to all the machines.

`sample-user ALL=ALL`

In case I have three machines `SERVER1,SERVER2,SERVER3` and I need to allow a user to run `useradd` command only on `SERVER2 & SERVER3` then 

```shell
Host_Alias APP_SERVERS = SERVER2, SERVER3
Cmnd_Alias MANAGE_USER = /sbin/useradd

sample-user APP_SERVERS = MANAGE_USER
```


---- 

Now the user can execute the commands as normal user by using sudo privilege and those commands will be executed as root user in the background.

First switch to normal user.

` su - john`{{execute}}

Then 

`sudo useradd appuser1`{{execute}}


  