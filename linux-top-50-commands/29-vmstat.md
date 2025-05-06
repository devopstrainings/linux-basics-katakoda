In Linux and other Unix-like operating systems, the `vmstat` command is used to display statistics about virtual memory and other system resources. When run without options or arguments, it displays average statistics since the last system boot.

The basic usage is simply `vmstat`.

`vmstat`{{execute}}
# Typical output includes several sections:
# procs:   Information about processes.
#          r: Number of processes waiting for run time.
#          b: Number of processes in uninterruptible sleep (waiting for I/O, etc.).
# memory:  Information about memory usage.
#          swpd: Amount of swap memory used.
#          free: Amount of idle memory.
#          buff: Memory used as buffers.
#          cache: Memory used as cache.
#          inact: Inactive memory (-a option).
#          active: Active memory (-a option).
# swap:    Information about swap activity.
#          si: Kilobytes swapped IN per second.
#          so: Kilobytes swapped OUT per second.
# io:      Information about Block I/O.
#          bi: Blocks received from a block device (reads) per second.
#          bo: Blocks sent to a block device (writes) per second.
# system:  Information about system activity.
#          in: The number of interrupts per second, including the clock.
#          cs: The number of context switches per second.
# cpu:     Percentage of CPU time spent in various states.
#          us: user time
#          sy: system time
#          id: idle time
#          wa: I/O wait time
#          st: steal time (for virtual machines)

Here are some highly used options for `vmstat`:

1.  **`vmstat interval [count]` (Continuous Monitoring)**
    This is a very common way to use `vmstat` to see performance changes over time. You specify an `interval` (in seconds) for reports to be displayed periodically. Optionally, you can specify a `count` for the number of reports. The first report is the average since boot, and subsequent reports show statistics for the elapsed interval.

    `# Display reports every 3 seconds (will run continuously until Ctrl+C)`
    `vmstat 3`{{execute}}

    `# Display 10 reports with a 5-second interval`
    `vmstat 5 10`{{execute}}

2.  **`-a` (Show active/inactive memory)**
    Adds columns to the memory section showing 'inact' (inactive) and 'active' memory. Active memory is memory that has been used recently and is usually resident in RAM. Inactive memory is memory that has been allocated but not used recently and is a candidate for swapping out.

    `vmstat -a`{{execute}} # Shows active/inactive memory since boot
    `vmstat -a 2`{{execute}} # Shows active/inactive memory every 2 seconds

3.  **`-s` (Display statistics table)**
    Instead of the standard columnar output, the `-s` option displays a table of various event counters and memory statistics since boot. This is good for a summary view.

    `vmstat -s`{{execute}} # Displays a summary table of statistics

4.  **`-d` (Report disk statistics)**
    Similar to `iostat -d`, this option shows disk utilization statistics for each block device. It reports reads/writes completed, merged, and sectors transferred, along with average queue size and I/O time.

    `vmstat -d`{{execute}} # Shows disk statistics since boot
    `vmstat -d 5`{{execute}} # Shows disk statistics every 5 seconds

5.  **`-w` (Wide output)**
    Some columns, especially in the CPU section, might get truncated in the default output on smaller terminals. The `-w` option provides a wider output format to prevent truncation.

    `vmstat -w`{{execute}} # Shows wide output of statistics

The `vmstat` command is a powerful diagnostic tool for investigating system performance issues, particularly those involving process scheduling (`r`, `b`), memory pressure and swapping (`swpd`, `free`, `si`, `so`), and CPU utilization (`us`, `sy`, `id`, `wa`). Using it with an interval is key for observing system behavior over time.
