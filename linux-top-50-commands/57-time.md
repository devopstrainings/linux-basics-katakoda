In Linux and other Unix-like operating systems, the `time` command measures the execution time of another command.

The basic usage is `time command [arguments]`.

**Basic usage: Timing a command:**
Time how long a simple command like `sleep 1` takes to run.

`time sleep 1`{{execute}}
#
# The `sleep 1` command will execute (it will pause for 1 second), and then `time` will print its report to standard error.
# Typical default output format (may vary slightly):
# real    0m1.003s    # Wall clock time (total elapsed time)
# user    0m0.001s    # User CPU time (time spent running the command's code)
# sys     0m0.002s    # System CPU time (time spent in kernel on behalf of the command)
#
# Explanation of the times:
# - **real** (or wall): The actual elapsed time from when the command started to when it finished. This is the time you experience.
# - **user**: The amount of CPU time spent executing the user-level code of the command.
# - **sys** (or system): The amount of CPU time spent executing kernel-level code (system calls) on behalf of the command.
# - For single-threaded processes on a single core, `real` >= `user` + `sys`. For multi-threaded or multi-core processes, `user` + `sys` can exceed `real`.

Here are some useful options for the `time` command that control its output format:

1.  **`-p` (Portable output format)**
    Prints the timing output in a simple, portable format suitable for parsing in scripts, with labels on separate lines.

    `time -p sleep 1`{{execute}}
    # Output:
    # real 1.00
    # user 0.00
    # sys 0.00

2.  **`-o FILE` or `--output=FILE` (Write output to file)**
    Writes the timing output to a specified `FILE` instead of standard error. Useful for capturing benchmark results.

    `time -o timing_report.txt sleep 1`{{execute}}
    `cat timing_report.txt`{{execute}} # Display the contents of the report file

3.  **`-f FORMAT` or `--format=FORMAT` (Custom output format)**
    Allows you to specify a custom format string to control exactly what statistics are displayed and how they are formatted. This is very powerful but requires knowing the format directives (e.g., `%E` for real time, `%U` for user time, `%S` for system time, `%M` for max resident set size).

    `# Display only real time, user time, and system time with labels`
    `time -f "Real: %E\nUser: %U\nSys: %S" sleep 1`{{execute}}
    # Example Output:
    # Real: 0:01.00
    # User: 0.00
    # Sys: 0.00

The `time` command is a straightforward tool for measuring the performance of other commands, providing valuable insights into how much real time and CPU resources they consume. Using options like `-p` or `-f` allows you to tailor the output for specific needs.
