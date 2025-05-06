In Linux and other Unix-like operating systems, the `ssh` command is used to establish secure connections to remote systems.

The basic usage is `ssh hostname_or_IP_address`. By default, `ssh` attempts to log in to the remote system using the same username you are currently using on your local machine.

**Basic usage: Connect with current username:**
Connect to a remote server using your current local username.

`ssh remote.example.com`{{execute}} # Replace with the actual hostname or IP
# If it's your first time connecting, you might be asked to verify the remote host's fingerprint.
# You will likely be prompted for the password of your user on the remote system.

**Specify a different username:**
If your username on the remote system is different from your local username, specify it using the format `username@hostname_or_IP_address`.

`ssh remote_user@remote.example.com`{{execute}} # Replace with remote user and host
# You will likely be prompted for the password of 'remote_user' on the remote system.

**Exiting an SSH session:**
Once you are logged into the remote system via SSH, to end the session and return to your local command prompt, type `exit` or `logout` and press Enter.

`# While logged into the remote system:`
`exit`{{execute}}
# Or
`logout`{{execute}}

Here are some highly used options for `ssh`:

1.  **`-p PORT` (Specify port)**
    If the SSH service on the remote server is running on a port other than the default port 22, use the `-p` option to specify the correct port number.

    `# Connect to remote.example.com on port 2222`
    `ssh -p 2222 remote_user@remote.example.com`{{execute}}

2.  **`-i identity_file` (Specify private key)**
    Use this option to specify the path to a private key file (identity file) for public-key authentication, instead of using password authentication. This is the more secure and convenient method once set up. Common key paths are `~/.ssh/id_rsa` or `~/.ssh/id_ed25519`.

    `# Connect using a specific private key file`
    `ssh -i ~/.ssh/my_remote_key remote_user@remote.example.com`{{execute}}

3.  **`-X` or `-Y` (X11 Forwarding)**
    Enables X11 forwarding, which allows you to run graphical applications on the remote server and display their windows on your local machine (if you have an X server running locally). `-Y` is generally recommended as it is trusted X11 forwarding.

    `# Connect and enable X11 forwarding`
    `ssh -X remote_user@remote.example.com`{{execute}}
    `# Then, while logged in, you could try running a graphical app like 'xclock'`

4.  **`-v` (Verbose output)**
    Provides verbose debugging output about the SSH connection process. Useful for troubleshooting connection problems. You can use `-vv` or `-vvv` for even more detail.

    `ssh -v remote_user@remote.example.com`{{execute}} # See connection details step-by-step

5.  **Port Forwarding (`-L`, `-R`)**
    While more advanced, `-L` (local port forwarding) and `-R` (remote port forwarding) are very powerful uses of SSH to create secure tunnels.

    `# Example: Tunnel local port 8080 to remote.example.com's web server (port 80)`
    `# ssh -L 8080:remote.example.com:80 remote_user@remote.example.com`{{execute}}
    # While this connection is open, accessing http://localhost:8080 on your local machine
    # will forward the traffic securely through SSH to http://remote.example.com:80.

The `ssh` command is the cornerstone of secure remote administration and communication in Linux, providing encryption and a robust set of features for various networking tasks beyond simple remote login.
