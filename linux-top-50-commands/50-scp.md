In Linux and other Unix-like operating systems, the `scp` command is used to securely copy files and directories over a network using SSH.

The basic usage involves specifying a source and a destination. The format for a remote location is `[user@]hostname_or_IP:/path/to/file_or_directory`.

**Copying a file from Local to Remote:**
Copy a file from your local machine to a remote server.

`# Copy local_file.txt to remote.example.com as remote_user in their home directory`
`scp local_file.txt remote_user@remote.example.com:`{{execute}} # ':' alone means user's home directory
# Or to a specific path:
`scp local_file.txt remote_user@remote.example.com:/path/on/remote/`{{execute}}
#
# You will likely be prompted for remote_user's password on remote.example.com (unless using SSH keys).
# Output shows transfer progress and speed.

**Copying a file from Remote to Local:**
Copy a file from a remote server to your local machine.

`# Copy remote_file.txt from remote.example.com as remote_user to your current local directory (.)`
`scp remote_user@remote.example.com:/path/on/remote/remote_file.txt .`{{execute}}
# Or to a specific local path:
`scp remote_user@remote.example.com:/path/on/remote/remote_file.txt /local/target/dir/`{{execute}}
#
# You will likely be prompted for remote_user's password on remote.example.com.
# Output shows transfer progress and speed.

**Copying between two Remote Hosts:**
You can copy directly between two remote hosts using `scp`. However, this usually requires authentication from the initiating machine to *both* remote hosts, and sometimes the data transfer still routes through the initiating machine unless direct trust is set up.

`# Copy file from host1 to host2 (might route through your local machine)`
`# scp user1@host1:/path/to/file user2@host2:/path/`{{execute}}

Here are some highly used options for `scp`:

1.  **`-r` (Recursive copy)**
    Copies entire directories, including all files and subdirectories within them. This is essential for copying folders.

    `# Copy a local directory 'my_local_folder' to remote.example.com recursively`
    `scp -r my_local_folder/ remote_user@remote.example.com:/path/on/remote/`{{execute}}

    `# Copy a remote directory 'my_remote_folder' to your local machine recursively`
    `scp -r remote_user@remote.example.com:/path/on/remote/my_remote_folder .`{{execute}}

2.  **`-P PORT` (Specify remote SSH port)**
    If the SSH service on the remote host is listening on a port other than the default port 22, use the uppercase `-P` option to specify the port number. (Note the uppercase P, different from `ssh -p`).

    `# Copy a file to a remote host where SSH is on port 2222`
    `scp -P 2222 local_file.txt remote_user@remote.example.com:/path/on/remote/`{{execute}}

3.  **`-i identity_file` (Specify private key)**
    Use this option to specify the path to a private key file for public-key authentication, instead of using password authentication.

    `# Copy a file using a specific SSH private key`
    `scp -i ~/.ssh/my_remote_key local_file.txt remote_user@remote.example.com:/path/on/remote/`{{execute}}

4.  **`-v` (Verbose output)**
    Displays verbose debugging output about the SSH connection and transfer process. Useful for troubleshooting connection or permission issues.

    `scp -v local_file.txt remote_user@remote.example.com:`{{execute}} # See connection details

5.  **`-p` (Preserve file attributes)**
    Preserves the modification time, access time, and modes (permissions) from the original source file on the destination file.

    `# Copy a file and preserve its original permissions and timestamps`
    `scp -p local_file.txt remote_user@remote.example.com:`{{execute}}

The `scp` command is a secure and convenient way to transfer files and directories between systems using the trusted SSH protocol, essential for system administration and development workflows involving remote servers.
