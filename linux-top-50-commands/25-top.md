In Linux and other Unix-like operating systems, the `top` command is used to display a real-time, interactive view of system performance and running processes.

The basic usage is simply `top`.

`top`{{execute}}
# This command launches the interactive top utility in your terminal.
# It will show dynamic output that updates periodically.

When `top` is running, you will see a summary area at the top showing things like system uptime, load average, task counts (running, sleeping, stopped, zombie), CPU utilization percentages, and memory/swap usage. Below that is the list of processes, typically showing PID, USER, CPU%, MEM%, COMMAND, etc.

**Exiting top:**
To quit the `top` program, simply press the `q` key while `top` is running.

Here are some common ways to launch `top` or keys you can press *while top is running* to change its display:

1.  **`top -u username` (Show processes for a specific user)**
    You can launch `top` to immediately filter the process list to show only processes owned by a specific `username`.

    `top -u your_username`{{execute}} # Replace 'your_username' with an actual username

2.  **`top -p PID` (Monitor specific processes by PID)**
    You can tell `top` to monitor only specific processes by providing a comma-separated list of their Process IDs (PIDs).

    `# Example: monitor processes with PIDs 123 and 456`
    `# top -p 123,456`{{execute}}

3.  **Press `P` (Sort by CPU usage)**
    While `top` is running (in its default view), pressing the uppercase `P` key will sort the process list by CPU utilization percentage, from highest to lowest. This is often the default sort order.

    `# While top is running, press the 'P' key`

4.  **Press `M` (Sort by Memory usage)**
    While `top` is running, pressing the uppercase `M` key will sort the process list by resident memory usage (RES), from highest to lowest. Useful for identifying processes consuming the most RAM.

    `# While top is running, press the 'M' key`

5.  **Press `k` (Kill a process)**
    While `top` is running, pressing the lowercase `k` key will prompt you at the bottom of the screen to enter the PID of the process you want to kill and the signal number (default is 15, press Enter for default, or enter 9 for a forceful kill). **Use with caution!**

    `# While top is running, press the 'k' key, then enter PID and signal`

6.  **Press `1` (Toggle CPU core display)**
    On multi-core systems, pressing the `1` key while `top` is running will toggle the display in the summary area between showing overall CPU usage and showing individual usage for each CPU core.

    `# While top is running, press the '1' key to see individual CPUs`

The `top` command is an essential tool for real-time system monitoring and troubleshooting performance issues by showing you which processes are using the most resources. Its interactive commands allow you to customize the display and even manage processes directly.
