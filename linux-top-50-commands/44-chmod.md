In Linux, the `chmod` command changes the permissions of files and directories.

The basic usage is `chmod permissions file(s)_or_directory(s)`.

**Mode 1: Symbolic Mode**
Symbolic mode uses letters and symbols to specify permission changes. The format is `[ugoa][+-=][rwxXst]`. We'll focus on `[ugoa][+-=][rwx]`.

* `u`, `g`, `o`, `a`: Who to change permissions for.
* `+`: Add the specified permission(s).
* `-`: Remove the specified permission(s).
* `=`: Set the permission(s) *exactly* as specified, removing any others that were not listed.
* `r`, `w`, `x`: The permissions to add, remove, or set.

`touch my_file.txt`{{execute}} # Create a file
`mkdir my_dir`{{execute}} # Create a directory
`ls -l`{{execute}} # See initial permissions

`# Add read permission for the group`
`chmod g+r my_file.txt`{{execute}}
`ls -l my_file.txt`{{execute}} # See the permission added

`# Remove write permission for others`
`chmod o-w my_file.txt`{{execute}}
`ls -l my_file.txt`{{execute}} # See the permission removed

`# Set permissions for the owner to read and write, and for group/others to read only`
`chmod u=rw,go=r my_file.txt`{{execute}}
`ls -l my_file.txt`{{execute}} # See the permissions set exactly

**Mode 2: Numeric (Octal) Mode**
Numeric mode uses a three-digit number to specify permissions for the owner, group, and others, respectively. Each digit is the sum of the values of the permissions:
* r = 4
* w = 2
* x = 1
* - = 0

The three digits represent `[owner][group][others]`.

Examples:
* `7` = rwx (4+2+1) - Read, Write, Execute
* `6` = rw- (4+2+0) - Read, Write
* `5` = r-x (4+0+1) - Read, Execute
* `4` = r-- (4+0+0) - Read only
* `0` = --- (0+0+0) - No permissions

`# Set permissions to owner=rwx, group=r-x, others=r-x (common for scripts/executables)`
`chmod 755 my_file.txt`{{execute}}
`ls -l my_file.txt`{{execute}}

`# Set permissions to owner=rw-, group=r--, others=r-- (common for configuration files)`
`chmod 644 my_file.txt`{{execute}}
`ls -l my_file.txt`{{execute}}

**Permissions for Directories:**
Note that the 'x' permission for a directory allows you to *enter* the directory and access its contents (if 'r' is also set). 'w' allows creating/deleting items *within* the directory. A common permission for directories is 755 (owner can do anything, group/others can list and enter).

`chmod 755 my_dir`{{execute}}
`ls -ld my_dir`{{execute}} # Use -d to show dir permissions, not contents

Here are some useful options for `chmod`:

1.  **`-R` or `--recursive`**
    Changes the permissions of the directory itself and recursively changes the permissions of all files and subdirectories within it. **Use this option with extreme care, as it can quickly apply permission changes to many files.**

    `# Create a directory structure`
    `mkdir -p parent_dir/child_dir`{{execute}}
    `touch parent_dir/file1.txt parent_dir/child_dir/file2.txt`{{execute}}
    `ls -lR parent_dir`{{execute}} # See initial permissions

    `# Recursively set owner=rw, group=r, others=read only (644 for files, adjust for dirs if needed)`
    `# A common recursive task is setting executable for owner/group/others on files and executable for directories`
    `# chmod -R a+rX parent_dir`{{execute}} # Adds read for all, execute for all IF already executable or it's a directory

    `# Example: Recursively set directory permissions to 755 and file permissions to 644`
    `find parent_dir -type d -exec chmod 755 {} \;`{{execute}}
    `find parent_dir -type f -exec chmod 644 {} \;`{{execute}}
    `ls -lR parent_dir`{{execute}} # See the recursive changes

2.  **`-v` or `--verbose`**
    Prints a message for each file or directory whose permissions are changed, showing the old and new permission modes.

    `chmod -v 600 my_file.txt`{{execute}} # Reports the change made to my_file.txt

The `chmod` command is fundamental for managing access control in Linux file systems using either the human-readable symbolic mode or the concise numeric (octal) mode. The `-R` option makes it efficient for applying changes to entire directory trees.
