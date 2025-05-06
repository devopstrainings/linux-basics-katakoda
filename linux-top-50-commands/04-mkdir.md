In Linux and other Unix-like operating systems, the `mkdir` command is used to **Make Directory**. You use it to create new empty directories in a specified location. If no path is given, the directory is created in the current working directory.

The basic usage is `mkdir` followed by the name or path of the directory you want to create.

**Creating a single directory:**
Create a new directory named 'my_new_folder' in the current location.

`mkdir my_new_folder`{{execute}}
`ls`{{execute}} # Verify the new directory is created

**Creating multiple directories:**
You can create several directories at once by listing their names or paths separated by spaces.

`mkdir project_alpha project_beta`{{execute}}
`ls`{{execute}} # Verify both directories are created

Here are some useful options for `mkdir`:

1.  **`-p` (Parents)**
    This is a very important and frequently used option. The `-p` option allows you to create parent directories as needed. If you want to create a directory structure like `/home/user/projects/2025/q1`, but the `projects`, `2025`, or `q1` directories don't exist, `mkdir -p` will create all of them in one go. Without `-p`, `mkdir` would fail if any intermediate directory in the path doesn't exist.

    `mkdir -p /tmp/my_project/src/data`{{execute}}
    `ls -l /tmp/my_project/src`{{execute}} # Verify the structure was created

2.  **`-m mode` (Mode)**
    The `-m` option allows you to set the file permissions (mode) for the newly created directory directly from the `mkdir` command, using the same symbolic or numeric notation as the `chmod` command.

    `mkdir -m 755 my_shared_dir`{{execute}}
    `ls -l`{{execute}} # Verify permissions (drwxr-xr-x)

3.  **`-v` (Verbose)**
    The `-v` option tells `mkdir` to print a message for each directory it creates. This is helpful when using the `-p` option to see exactly which directories were made.

    `mkdir -pv /tmp/another_project/docs/images`{{execute}} # Creates parent directories and reports progress

These options enhance the basic functionality of `mkdir`, making it efficient for creating single directories, multiple directories, or entire directory trees with specific permissions.
