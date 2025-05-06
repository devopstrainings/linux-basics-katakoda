In Linux and other Unix-like operating systems, the `iostat` command is used to monitor system I/O performance. When run without options and arguments, it displays CPU statistics and device I/O statistics since the last system boot.

The basic usage is simply `iostat`.

`iostat`{{execute}}
# Typical output includes two main sections:
# 1. CPU statistics (like %user, %nice, %system, %idle, %iowait)
# 2. Device statistics for each block device (e.g., sda, sdb, vda),
#    with columns like:
#    tps:         Transfers per second (I/O requests issued to the device).
#    kB_read/s:   Kilobytes read per second.
#    kB_wrtn/s:   Kilobytes written per second.
#    kB_dscd/s:   Kilobytes discarded per second (for SSDs/trim).
#    kB_read:     Total kilobytes read since boot.
#    kB_wrtn:     Total kilobytes written since boot.
#    kB_dscd:     Total kilobytes discarded since boot.

Here are some highly used options for `iostat`:

1.  **`iostat interval [count]` (Continuous Monitoring)**
    This is a very common way to use `iostat`. You specify an `interval` (in seconds) for reports to be displayed periodically. Optionally, you can specify a `count` for the number of reports to show before exiting. The first report shows statistics since boot, and subsequent reports show statistics for the elapsed interval. This is essential for seeing real-time I/O activity.

    `# Display reports every 2 seconds (will run continuously until interrupted with Ctrl+C)`
    `iostat 2`{{execute}}

    `# Display 5 reports with a 3-second interval`
    `iostat 3 5`{{execute}}

2.  **`-d` (Show device statistics only)**
    If you are only interested in device I/O and don't need the CPU statistics block, use the `-d` option.

    `iostat -d`{{execute}} # Shows only the device statistics since boot

    `iostat -d 2 5`{{execute}} # Shows only device statistics every 2 seconds, 5 times

3.  **`-x` (Extended statistics)**
    This option provides more detailed device statistics, which are crucial for deep performance analysis. Additional columns include:
    * `await`: The average time (in milliseconds) for I/O requests issued to the device to be served. This includes time spent in the queue and time spent servicing the requests.
    * `avgqu-sz`: The average queue size of requests that were issued to the device.
    * `%util`: The percentage of CPU time during which I/O requests were issued to the device (device utilization percentage).

    `iostat -x`{{execute}} # Shows extended device statistics since boot
    `iostat -x 2`{{execute}} # Shows extended device statistics every 2 seconds

4.  **Specify Device(s)**
    You can limit the output to statistics for only specific devices by providing their names (e.g., `sda`, `vda`, `nvme0n1`) after the options and interval/count.

    `# Show statistics for device 'sda' since boot`
    `iostat sda`{{execute}}

    `# Show extended statistics for device 'vda' every 5 seconds`
    `iostat -x vda 5`{{execute}}

    `# Show extended statistics for devices 'sda' and 'sdb' every 2 seconds`
    `iostat -x sda sdb 2`{{execute}}

5.  **Specify Units (`-m`, `-g`)**
    By default, `iostat` uses kilobytes (`kB`). You can use `-m` to report rates and totals in megabytes (`MB`) or `-g` for gigabytes (`GB`).

    `iostat -m`{{execute}} # Report stats in MB/s and MB since boot
    `iostat -g 5`{{execute}} # Report stats in GB/s every 5 seconds

Other useful options include `-p` to show statistics for partitions as well as devices, and `-h` for human-readable units on some systems (though `-m` and `-g` are more standard for rates).

The `iostat` command is indispensable for understanding the performance of your storage system, identifying bottlenecks, and monitoring disk activity in real-time using the interval option.
