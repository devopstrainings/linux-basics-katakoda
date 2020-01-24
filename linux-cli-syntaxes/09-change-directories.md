## ____________________________________________

## Present Working Directory 

To check where you are currently in the system we use `pwd` command.

`pwd`{{execute}}


## ____________________________________________

## Navigate to Directories

To change the working directory from one location to another we use `cd`command

`Syntax: cd <directory>`

`cd /bin`{{execute}} 

you will switch to `/bin` directory

`pwd`{{execute}} 

you can check your current working directory using `pwd` command

`cd`{{execute}} 

simple `cd` command will take you to the home directory of the user

`pwd`{{execute}} 

observe the output

`cd -`{{execute}} This command will take you the previous directory that you were using.

### Double dot (..)

`cd /etc/yum`{{execute}} 
`cd ..`{{execute}} 
`pwd`{{execute}} 
`cd ..`{{execute}} 
`pwd`{{execute}} 

`..` means parent directory and it takes you to the parent directory of the current directory

`pwd`{{execute}}

### Single dot (.)

Dot in linux indicates present working directory, you can use it in the commands which we have used so far

`ls`{{execute}} observe the names of the files

We will try cp command with the `.` option 

`cp /root/sample .`{{execute}}

`ls`{{execute}} 

Now if you compare the output from the previous ls you will be able to see the file with name sample in the present directory.


## Tabs

Tab is really a useful in auto filling , So explore using `tab` and double `tab`

