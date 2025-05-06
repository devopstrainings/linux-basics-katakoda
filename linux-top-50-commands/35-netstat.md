In Linux and other Unix-like operating systems, the `netstat` command displays various network connections, routing tables, and interface statistics.

The basic usage `netstat` without options often shows open sockets that are active (not just listening). The exact default output varies slightly between systems.

`netstat`{{execute}}
# Typical default output columns might include:
# Proto Recv-Q Send-Q Local Address           Foreign Address         State
# tcp        0      0 localhost:mysql         *:* LISTEN
# tcp        0      0 localhost:smtp          *:* LISTEN
# tcp        0      0 server.local:ssh        client.remote:54321     ESTABLISHED

Here are some highly used options and combinations for `netstat`:

1.  **`-a` or `--all` (Show all sockets)**
    Displays both listening and non-listening (established, waiting, etc.) sockets. This is often used with other options to get a comprehensive list of connections.

    `netstat -a`{{execute}} # Shows all sockets (listening and connected)

2.  **`-n` or `--numeric` (Show numerical addresses)**
    Displays numerical addresses and port numbers instead of trying to resolve hostnames or service names (like `ssh`, `http`, `mysql`). This makes the output faster (no DNS lookup) and clearer, especially in scripts. This is a very common option, often combined with others.

    `netstat -an`{{execute}} # Shows all sockets with numerical addresses and ports

3.  **`-p` or `--programs` (Show owning process)**
    Displays the PID (Process ID) and the name of the program that owns each socket. This requires root privileges (`sudo`). It's extremely useful for finding out which process is using a particular port or connection.

    `sudo netstat -ap`{{execute}} # Shows all sockets and the associated program/PID

4.  **`-r` or `--route` (Show routing tables)**
    Displays the kernel routing tables. This output is similar to the `route -n` command or `ip route show`. Often used with `-n` for numerical output.

    `netstat -r`{{execute}} # Shows the routing table
    `netstat -rn`{{execute}} # Shows the routing table with numerical addresses

5.  **Common Combination: `-tuln`**
    This is a very popular combination of options to get a clear list of listening TCP and UDP ports numerically, without resolving names.
    * `-t`: Show TCP sockets
    * `-u`: Show UDP sockets
    * `-l`: Show only listening sockets
    * `-n`: Show numerical addresses and ports

    `netstat -tuln`{{execute}} # Lists all listening TCP and UDP ports numerically

6.  **Common Combination: `-anp`**
    Another highly used combination to see all sockets (listening and non-listening), with numerical addresses/ports, and the associated program/PID. Requires `sudo`.

    `sudo netstat -anp`{{execute}} # Shows all sockets, numerical, with process info

While `netstat` has many other options (e.g., `-s` for statistics, `-i` for interface stats), the options listed here cover the most common tasks related to viewing network connections, listening ports, and routing information.
