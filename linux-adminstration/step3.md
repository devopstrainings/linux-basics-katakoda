

In companies even though we know the ROOT user password, We might not login directly with ROOT user. Usually that admin ROOT user login is used only during the maintainences of the system or in some extreme cases. Such practices will help in getting the track of whom is performing which activities on the server.

So we usually create users in the system and those users login to the system to perform or do some work. But a normal user cannot do the admin activities and also as a standard practice we cannot login with ROOT user. Hence we need an alternate option to login as a normal user but perform the work as root user. 

To gain the above scenario we need to use some Privilege Escalation tools and few of them are 
  1. SUDO 
  2. PowerBroker 
  3. Centrify.. Etc

You can refer this link.
https://www.sudo.ws/other.html

Out of lot many tools **SUDO** is one of the default and widely used tool. Hence we are discussing SUDO further now..

Sudoers Configuration is available in the system, So need to customize that configuration and tell to sudoers that which users can perform which activities and then system allows only that users to perform those commands.

`Config File : /etc/sudoers` 

Alternatively you can add some files under `/etc/sudoers.d` and sudo program will load them as well.

Sudoers configuration syntax looks like below:

`user-name    MACHINE=COMMANDS` 

So either you add the above entries directly in `/etc/sudoers` or in a saperate file in `/etc/sudoers.d/` directory.

Refer the following video for understanding the mistakes. https://www.youtube.com/watch?v=OuKpAenxh94 

You can edit the configuration using the following command to avoid some mistakes.

``

