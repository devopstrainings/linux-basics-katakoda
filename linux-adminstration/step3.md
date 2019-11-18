

In companies even though we know the ROOT user password, We might not login directly with ROOT user. Usually that admin ROOT user login is used only during the maintainences of the system or in some extreme cases. Such practices will help in getting the track of whom is performing which activities on the server.

So we usually create users in the system and those users login to the system to perform or do some work. But a normal user cannot do the admin activities and also as a standard practice we cannot login with ROOT user. Hence we need an alternate option to login as a normal user but perform the work as root user. 

To gain the above scenario we need to use some Privilege Escalation tools and few of them are 
  1. SUDO 
  2. PowerBroker 
  3. Centrify.. Etc

You can refer this link.
![Sudo Alternatives](https://www.sudo.ws/other.html)

Out of lot many tools **SUDO** is one of the default and widely used tool. Hence we are 