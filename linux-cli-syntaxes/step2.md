
Once you login into the machine. you might want to see the information related to hardware and operating system of that machine.

To check the vendor of the operating system.

`cat /etc/*release`{{execute}} 

This gives the name of the operating system that is being used.

To check the CPU information

`cat /proc/cpuinfo`{execute}


For Example:

`uname -a`{{execute}}

`uname --all`{{execute}}

#### Inputs

Certain commands require inputs, Inputs are given with options in some commands and with out options also some commands will take the input.

For Example:

`ls /boot`{{execute}}