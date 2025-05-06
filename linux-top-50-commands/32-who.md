In Linux and other Unix-like operating systems, the `who` command prints information about users who are currently logged in.

The basic usage is simply `who`.

`who`{{execute}}
# The default output typically shows the following columns for each logged-in user:
# 1.  Username
# 2.  The terminal line (TTY) the user is on
# 3.  The login time
# 4.  (Optional) The remote host or IP address they logged in from
#
# Example Output:
# user1    pts/0        2025-05-04 10:00 (192.168.1.10)
# user2    pts/1        2025-05-04 10:05 (:0.0)
# root     tty1         2025-05-04 09:55

Here are some useful options for `who` that modify the output:

1.  **`-a` or `--all` (Show all)**
    This option shows all available information, effectively combining the output from several other `who` options (like boot time, dead processes, runlevel, clock, users, and their PIDs/idle times). It provides a comprehensive view.

    `who -a`{{execute}} # Shows all available information about logged-in users and system state

2.  **`-m` (Me / am I)**
    This option displays information only about the current user executing the command. It's equivalent to running `who am i` or `whoami`, though `whoami` only prints the effective username. `who -m` provides more details (terminal, login time) for the current session.

    `who -m`{{execute}} # Shows information only for your current session

3.  **`-q` or `--count` (Quick list and count)**
    Provides a quick, concise list of just the usernames logged in, followed by a total count of users. This is faster than the default output for just seeing who is on.

    `who -q`{{execute}} # Lists usernames on a single line and shows user count

4.  **`-u` or `--users` (Show users, PID, and idle time)**
    Shows the list of logged-in users, including their PID and idle time. Idle time is displayed as the time since the user last typed something on their terminal (or "." if recent, or "old" if >24 hours idle).

    `who -u`{{execute}} # Shows username, terminal, login time, PID, and idle time

The `who` command is a simple but effective way for users and administrators to see who is currently connected to the system and basic details about their sessions.
