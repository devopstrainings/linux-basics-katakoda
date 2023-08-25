

Lets try a command that will fail because of privilges. 

```bash 
kill <pid-of-other-user> 
```

In companies even though we know the ROOT user password, We might not login directly with ROOT user. Usually that root user login is used only during the maintenances of the system or in some extreme cases. 

We always login as a normal user but perform the work will be done as root user. 

To gain the above scenario we need to use some Privilege Escalation tools and few of them are 
  1. SUDO 
  2. PowerBroker 
  3. Centrify... etc

You can refer this link.
https://www.sudo.ws/other.html

Out of lot many tools **SUDO** is one of the default and widely used tool. 

So to run any command as root user then we need to prefix that with sudo and that will run if we are allowed to run in the system.

```bash 
sudo kill <pid-of-other-user>

```

Note: Adding privileges and adding human users is all part of SSO in the organizations.

If you are interested to how to add the privileges locally then following link can help.
https://linuxize.com/post/how-to-add-user-to-sudoers-in-centos/




  