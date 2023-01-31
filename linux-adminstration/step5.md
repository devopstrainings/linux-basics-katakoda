
A server is used to serve a service which runs all the time in the background. Unlike the commands which we ran sofar are foreground commands which will get terminated when we disconnect the session. So just to run the process in the background and as well as managing it in a better way we have some utilities that comes under service management.

To list all the services which are running in the Operating System.

`sudo systemctl list-units -t service`{{execute}}

Press `q` to come out of the list.

To check the status of a single service 

`sudo systemctl status nginx`{{execute}}

To start a service 

`sudo systemctl start nginx`{{execute}}

Then check the status 

`sudo systemctl status nginx`{{execute}}

To stop a service 

`sudo systemctl stop nginx`{{execute}}

To restart a service 

`sudo systemctl restart nginx`{{execute}}

Assume in case if a machine reboots then you want start the service along with the Operating system then 

First check the status 

`sudo systemctl status nginx`{{execute}}

Let us enable the service to start at the time of reboot 

`sudo systemctl enable nginx`{{execute}}

Now lets check the status again 

`sudo systemctl status nginx`{{execute}}

Finally, in case if we don't want to start the service along with OS then 

`sudo systemctl disable nginx`

This nginx service along with the package you installed in Package Management section. Some softwares which we might install in future may not come as a RPM and those services will not come by default. In that case we create a new service and we will configure with `systemctl` to manage it, This topic will come in future classes.

