

In RedHat family OS, every command you execute is going to create a process in the system. Also that process is going to get one unique number allocated to it which is called as **"PID"** (Process ID)

Those process can be fetched from the command line using `ps` command.

`ps`{{execute}}


But the above command will show only the process related to this session which you logged in. 

If you need all the process which belongs to the current user then you can use `-u` option along with it.

`ps -u`{{execute}}


An operating system also have some other users and as well as system process running in the background.

If you want to see every process related to the system and process belongs to other users then we have to use `-e` option.

`ps -e`{{execute}}


Option `-e` show all process along with PID and PUSER, But in case of more information then you can use `-f` option along with the `-e` option.

`ps -ef`{{execute}}


Ofcouse the above command shows all the process which we might look some process all the time, So you can filter the process by piping the output to `grep` command

`ps -ef | grep ssh`{{execute}}



As an administrator we might need to manage the process in the system. Some times we terminate process normally and sime times we might do it forcefully.

To manage the process or to be pricise that to kill a process we use `kill` command.

Let us create a process in the background.

`sleep 300 &`{{execute}} 

In above command `sleep 300` is going to run the process for `300` seconds, Where as `&` symbol is pushing the process to run in the background. So it will be useful to get the terminal immediealty and as well as such process will run in the background even if we close the session.

Ok, let us find out the process ID for `sleep` command.

`ps -ef | grep sleep`{{execute}}

Now we want to kill this process, So we would use `kill` command along with the PID.

`kill PID`

# Additional Commands for Practice
