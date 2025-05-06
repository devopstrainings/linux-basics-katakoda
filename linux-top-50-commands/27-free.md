In Linux and other Unix-like operating systems, the `free` command is used to display information about system memory. By default, it shows output in units of kibibytes (KiB), which are 1024 bytes.

The basic usage is simply `free`.

`free`{{execute}}
# Typical output includes lines for 'Mem' (physical RAM) and 'Swap'.
# The columns usually are:
#               total        used        free      shared  buff/cache   available
# Mem:        4058912     1024000     2560000      128000      307200      512000
# Swap:       8000000           0     8000000
#
# Explanation:
# total:      Total installed memory (or swap).
# used:       Memory currently in use by processes.
# free:       Memory that is completely unused.
# shared:     Memory used by tmpfs(5) or shared memory (System V shared memory, POSIX shared memory, and shmem).
# buff/cache: Memory used by kernel buffers and page cache (disk cache).
# available:  An estimate of how much memory is available for new applications without swapping.
#             This is different from 'free' because it includes memory that is currently used for buffers/cache but can be reclaimed.

Here are some highly used options for `free` that control the output units or format:

1.  **`-h` (Human-readable output)**
    This is the most common option. It displays memory amounts in human-readable units like KiB, MiB, GiB, TiB, etc., using powers of 1024.

    `free -h`{{execute}}
    # Output will look like:
    #               total        used        free      shared  buff/cache   available
    # Mem:           3.9Gi       1.0Gi       2.4Gi       128Mi       300Mi       500Mi
    # Swap:          7.6Gi          0B       7.6Gi
    # Note: Units use 'iB' for powers of 1024 (KiB, MiB), different from -H.

2.  **`-H` (Human-readable output using powers of 1000)**
    Similar to `-h`, but uses powers of 1000 (KB, MB, GB, etc.).

    `free -H`{{execute}}
    # Output will use KB, MB, GB, etc., based on 1000-byte increments.

3.  **Specify units (`-b`, `-k`, `-m`, `-g`)**
    You can explicitly tell `free` to display the output in bytes (`-b`), kibibytes (`-k`), mebibytes (`-m`), or gibibytes (`-g`). `-k` is the default.

    `free -m`{{execute}} # Display output in mebibytes (MiB)
    `free -g`{{execute}} # Display output in gibibytes (GiB)

4.  **`-t` (Show total)**
    Adds a line at the end showing the total amounts for the 'Mem' and 'Swap' lines combined.

    `free -ht`{{execute}} # Human-readable output with a total line

5.  **`-w` (Wide output)**
    Shows a more detailed breakdown of the buffer and cache columns, separating them into 'buffers' and 'cache'. This is often the default now, but `-w` ensures you see this breakdown.

    `free -hw`{{execute}} # Human-readable output with separate buffer and cache columns

The `free` command is a quick and easy way to check the current state of your system's memory usage, distinguishing between actively used, truly free, cached, and available memory. The `-h` option is almost always used for user-friendly output.

