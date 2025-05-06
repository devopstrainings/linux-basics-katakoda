In Linux, the `sudo` command is used to execute a command with elevated privileges, usually as the root user.

The basic usage is `sudo command`.

`# Run a command that requires root privileges, like updating the package list`
`sudo apt update`{{execute}} # Example for Debian/Ubuntu-based systems
# Or for Fedora/RHEL-based systems:
`# sudo dnf check-update`{{execute}}
#
# When you run this for the first time in a while, you will be prompted:
# [sudo] password for your_username:
# Type your user password and press Enter. If correct and you are allowed, the command runs.

Here are some highly used options for `sudo`:

1.  **`-l` or `--list` (List user's privileges)**
    Displays the commands that the user running `sudo -l` is allowed to execute on the current host, and the user(s) and group(s) they can run them as. Useful for checking your `sudoers` configuration.

    `sudo -l`{{execute}} # Lists your sudo privileges

    `# Check what user 'someuser' is allowed to run (requires your own sudo access)`
    `# sudo -l -U someuser`{{execute}} # Use -U to specify a different user

2.  **`-u user` or `--user=user` (Execute as specified user)**
    Allows you to run the command as a user other than the default target user (which is root).

    `# Run the 'whoami' command as the user 'user1'`
    `sudo -u user1 whoami`{{execute}} # Shows 'user1' as the output

    `# Create a file in a root-owned directory, owned by 'user1'`
    `# sudo -u user1 touch /opt/user1_file.txt`{{execute}} # Requires your sudo access

3.  **`-i` or `--login` (Run a login shell)**
    Runs the shell specified in the security database (usually `/etc/passwd`) of the target user (root by default) as a login shell. This gives you an environment very similar to logging in directly as that user, loading their profile files. Useful for interactive administrative tasks.

    `sudo -i`{{execute}} # Starts a root login shell (prompt changes to #)
    # Type 'exit' to return to your regular user session.

4.  **`-s` or `--shell` (Run a non-login shell)**
    Runs the shell specified in the security database of the target user (root by default) as a non-login shell. This gives you a root shell environment but doesn't load the full login profile.

    `sudo -s`{{execute}} # Starts a root non-login shell (prompt changes to #)
    # Type 'exit' to return to your regular user session.

5.  **`-v` or `--validate` (Update timestamp)**
    Updates the user's cached `sudo` credential timestamp. `sudo` remembers your successful password entry for a short period (default is 5 minutes). Running `sudo -v` resets this timer without executing a command.

    `sudo -v`{{execute}} # Extends your password-less sudo time

6.  **`-k` or `--kill` (Invalidate timestamp)**
    Invalidates the user's cached `sudo` credential timestamp. The next time you use `sudo`, you will be prompted for your password again immediately.

    `sudo -k`{{execute}} # Invalidates your sudo session

The `sudo` command is fundamental for secure system administration in Linux, allowing precise control over which users can run which commands with elevated privileges.
