In Linux and other Unix-like operating systems, the `zip` command creates `.zip` archives.

The basic usage for creating a new archive is `zip archive_name file1 file2 directory1 ...`.

**Basic usage: Creating a zip archive from files:**
Create an archive named 'my_archive.zip' containing two files.

`echo "File one content." > file1.txt`{{execute}}
`echo "File two content." > file2.txt`{{execute}}
`zip my_archive.zip file1.txt file2.txt`{{execute}}
# Output shows files being added and compression information.
`ls`{{execute}} # Verify 'my_archive.zip' was created

To extract files from a `.zip` archive, you typically use the `unzip` command.

`unzip my_archive.zip`{{execute}} # Extracts files from the archive

Here are some highly used options for `zip`:

1.  **`-r` (Recurse paths)**
    This option is essential for including the contents of directories in the archive. Without `-r`, `zip` will only add the directory entry itself, but not the files and subdirectories inside it. With `-r`, `zip` travels down the specified directories recursively and adds all files and directories found.

    `mkdir my_folder`{{execute}}
    `echo "Inside folder." > my_folder/inside.txt`{{execute}}
    `# Create a zip containing the folder and its contents`
    `zip -r folder_archive.zip my_folder/`{{execute}}
    # Use unzip -l folder_archive.zip to list contents:
    # unzip -l folder_archive.zip
    # Archive:  folder_archive.zip
    #   Length      Date    Time    Name
    # ---------  ---------- -----   ----
    #         0  2025-05-04 15:00   my_folder/
    #        15  2025-05-04 15:00   my_folder/inside.txt
    # ---------                     -------
    #        15                     2 files

2.  **`-d` (Delete entries)**
    Deletes files or directories from an existing `.zip` archive. You specify the name of the archive and the names of the entries inside the archive you want to delete.

    `# Delete file2.txt from my_archive.zip`
    `zip -d my_archive.zip file2.txt`{{execute}}
    `unzip -l my_archive.zip`{{execute}} # List contents to verify deletion

3.  **`-u` (Update entries)**
    Updates existing entries in a `.zip` archive or adds new files if they don't exist. It only replaces an existing file in the archive if the local file has been modified more recently.

    `# Modify file1.txt (update its timestamp)`
    `echo "New content" > file1.txt`{{execute}}
    `# Update my_archive.zip - file1.txt will be replaced`
    `zip -u my_archive.zip file1.txt file3.txt`{{execute}} # Also adds file3.txt if it doesn't exist

4.  **`-m` (Move entries)**
    Adds the specified files and directories to the `.zip` archive and then deletes the original files and directories after they have been successfully added. Use with caution!

    `touch file_to_move.txt`{{execute}}
    `ls`{{execute}}
    `# Move file_to_move.txt into move_archive.zip`
    `zip -m move_archive.zip file_to_move.txt`{{execute}}
    `ls`{{execute}} # file_to_move.txt is gone
    `unzip -l move_archive.zip`{{execute}} # Verify it's in the archive

5.  **`-e` (Encrypt entries)**
    Encrypts the contents of the files added to the archive using password protection. You will be prompted to enter a password. To extract files, the password will be required by the `unzip` command.

    `# Create an encrypted archive`
    `zip -e encrypted_archive.zip file1.txt`{{execute}} # You will be prompted for a password

6.  **Compression Level (`-0` to `-9`)**
    You can specify the compression level, where `-0` means no compression (store only), and `-9` means the best compression (takes longer). The default is usually `-6`.

    `# Create an archive with maximum compression`
    `zip -9 high_compression.zip file1.txt file2.txt`{{execute}}

    `# Create an archive with no compression (faster, larger file)`
    `zip -0 no_compression.zip file1.txt file2.txt`{{execute}}

The `zip` command is a fundamental tool for creating portable archives, essential for sharing and distributing collections of files across different operating systems. Options like `-r`, `-u`, and `-e` provide key functionality for common archiving tasks.
