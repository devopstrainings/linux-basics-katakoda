

In RedHat family OS, every command you execute is going to create a process in the system. Also that process is going to get one unique number allocated to it which is called as **"PID"** (Process ID)

Those process can be fetched from the command line using `ps` command.

`ps`{{execute}}


But the above command will show only the process related to this session which you logged in. 

If you need all the process which belongs to the current user then you can use `-u` option along with it.
