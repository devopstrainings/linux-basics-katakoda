
A server is used to serve a service which runs all the time in the background. Unlike the commands which we ran sofar are foreground commands which will get terminated when we disconnect the session. So just to run the process in the background and as well as managing it in a better way we have some utilities that comes under service management.

Until CentOS-6 OS we use to manage services with `service` and `chkconfig` commands. But from CentOS-7 we have single command to manage which is `systemctl`.

To list all the services which are running in the Operating System.

`systemctl list-units -t service`

To start a service 

`systemctl start nginx`


