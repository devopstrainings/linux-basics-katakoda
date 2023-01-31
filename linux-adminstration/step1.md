

In RedHat family OS, every command you execute is going to create a process in the system. Also that process is going to get one unique number allocated to it which is called as **"PID"** (Process ID)

Those process can be fetched from the command line using `ps` command.

`ps`{{execute}}


But the above command will show only the process related to this session which you logged in. 

If you need all the process which belongs to the current user then you can use `-u` option along with it.

`ps -u`{{execute}}


An operating system also have some other users and as well as system process running in the background.

If you want to see every process related to the system and process belongs to other users then we have to use `-e` option.

`ps -e`{{execute}}


Option `-e` show all process along with PID and PNAME, But in case of more information then you can use `-f` option along with the `-e` option.

`ps -ef`{{execute}}


Ofcourse the above command shows all the process which we might look some process all the time, So you can filter the process by piping the output to `grep` command

`ps -ef | grep ssh`{{execute}}


As an administrator we might need to manage the process in the system. Some times we terminate process normally and sime times we might do it forcefully.

To manage the process or to be precise that to kill a process we use `kill` command.

Let us create a process in the background.

`sleep 300 &`{{execute}} 

In above command `sleep 300` is going to run the process for `300` seconds, Where as `&` symbol is pushing the process to run in the background. So it will be useful to get the terminal immediate and as well as such process will run in the background even if we close the session.

Ok, let us find out the process ID for `sleep` command.

`ps -ef | grep sleep`{{execute}}

Now we want to kill this process, So we would use `kill` command along with the PID.

`kill <PID-OF-SLEEP-COMMAND>`

Now you will not find the process anymore with `ps` command.

`ps -ef | grep sleep`{{execute}}


Sometimes due to some reason these process may not get killed with this command and hence we may need to find a hard way / force way to kill them, Lets see a scenario..

`
curl -s https://raw.githubusercontent.com/devopstrainings/linux-basics-katakoda/master/linux-adminstration/files/no-kill.sh -o /tmp/no-kill.sh
`{{execute}}

-
`
sh /tmp/no-kill.sh &
`{{execute}}

Now you can fetch the PID and try to kill the process, But you will not be able to.

`ps -ef | grep sleep`{{execute}}

`kill <PID-OF-SLEEP-COMMAND>`

So, we might need to kill such process using an force option `-9`.

`kill -9 <PID-OF-SLEEP-COMMAND>`


# Additional Commands for Practice

# Self Exploring tasks

  1. What happens to the childs if you kill a parent process.
  2. What is an Orphan process / Zombie Process inside system.
  3. Process Priority - How to set some priority to a process.
  4. Explore `top` command.
5. 