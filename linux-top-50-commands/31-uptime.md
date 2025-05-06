In Linux and other Unix-like operating systems, the `uptime` command displays information about the system's operational state.

The basic usage is simply `uptime`.

`uptime`{{execute}}
# The default output typically shows the following information:
# 1.  Current time
# 2.  How long the system has been running (uptime)
# 3.  The number of users currently logged in
# 4.  The system load averages over the last 1, 5, and 15 minutes.
#
# Example Output:
# 14:45:14 up 5 days, 3:15,  2 users,  load average: 0.10, 0.15, 0.12
#
# Explanation of load averages: These numbers indicate the average number of processes
# that are either using the CPU or waiting for CPU time. A load average equal to or
# slightly higher than the number of CPU cores is generally considered acceptable.
# A load average significantly higher than the number of cores indicates the system
# might be overloaded.

The `uptime` command has very few options, primarily focused on changing the output format:

1.  **`-p` or `--pretty` (Pretty format)**
    Displays the uptime in a more human-friendly format, showing only the duration the system has been up (e.g., "up 5 days, 3 hours").

    `uptime -p`{{execute}}
    # Example Output:
    # up 5 days, 3 hours

2.  **`-s` or `--since` (System Up Since)**
    Displays the date and time since the system has been up, in a format suitable for parsing or scripting.

    `uptime -s`{{execute}}
    # Example Output (format may vary slightly):
    # 2025-04-29 11:30:00

The `uptime` command is a straightforward way to check the basic status of a system – how long it's been running, how many users are active, and its current load.
