
A server is used to serve a service which runs all the time in the background. Unlike the commands which we ran sofar are foreground commands which will get terminated when we disconnect the session. So just to run the process in the background and as well as managing it in a better way we have some utilities that comes under service management.

Until CentOS-6 OS we use to manage services with `service` and `chkconfig` commands. But from CentOS-7 we have single command to manage which is `systemctl`.

To list all the services which are running in the Operating System.

`systemctl list-units -t service`{{execute}}

To check the status of a single service 

`systemctl status nginx`{{execute}}

To start a service 

`systemctl start nginx`{{execute}}

Then check the status 

`systemctl start nginx`{{execute}}

To stop a service 

`systemctl stop nginx`{{execute}}

To restart a service 

`systemctl restart nginx`{{execute}}


Assume in case if a machine reboots then you want start the service along with the Operating system then 

First check the status 

`systemctl status nginx`{{execute}}

Let us enable the service to start at the time of reboot 

`systemctl enable nginx`{{execute}}

Now lets check the status again 

`systemctl status nginx`{{execute}}

Finally in case if we dont want to start the service along with OS then 

`systemctl disable nginx`


