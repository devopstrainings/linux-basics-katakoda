## ------------------------------------
## Some Quick Examples.

In general when we purchase a new hardware like Laptops or Desktops we generally look into the configuration of the machine. So let us try to 
Once you login into the machine, you might want to see the information related to hardware and operating system of that machine.

To check the vendor of the operating system.

`cat /etc/*release`{{execute}} 

To check the CPU information

`cat /proc/cpuinfo`{{execute}}

To check the memory information 

`cat /proc/meminfo`{{execute}}

To check the disk information

`fdisk -l`{{execute}}

With this information in hand you will have an idea of what you are dealing with and the specifications of that Linux machine.