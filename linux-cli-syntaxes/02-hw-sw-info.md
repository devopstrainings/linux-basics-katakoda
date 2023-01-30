## ____________________________________________
## Some Quick Examples.

In general when we purchase a new hardware like Laptops or Desktops we generally look into the configuration of the machine. So let us try to do the same for the server as well and this is minimum knowledge required while you are working on any machine either that is Desktop or Server.


So we need to login to the server to run the following commands.

To check the vendor of the operating system.

`cat /etc/*release`{{execute}} 

To check the CPU information

`cat /proc/cpuinfo`{{execute}}

To check the memory information 

`cat /proc/meminfo`{{execute}}

To check the disk information

`lsblk`{{execute}}

To check the architecture whether it is 32bit or 64bit

`uname -i`{{execute}}

```
32 bit ->  i386/i586/i686
64 bit ->  x86_64
```


PS Note: Starting CentOS 7, We don't have operating systems coming in 32 bit any more. Hence, we always see 64 bit.


With this information in hand you will have an idea of what you are dealing with and the specifications of that Linux machine.         


