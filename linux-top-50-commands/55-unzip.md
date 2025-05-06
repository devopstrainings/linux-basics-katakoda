In Linux and other Unix-like operating systems, the `unzip` command extracts files from `.zip` archives.

The basic usage is `unzip archive_name.zip`.

**Basic usage: Extracting files from a zip archive:**
Assume you have a zip file named 'my_archive.zip' (created, for example, using the `zip` command examples). Extract its contents.

`# Create a sample zip file first for demonstration`
`echo "File one." > file1.txt`{{execute}}
`mkdir my_folder`{{execute}}
`echo "Inside folder." > my_folder/inside.txt`{{execute}}
`zip -r demo_archive.zip file1.txt my_folder/`{{execute}}
`rm -r file1.txt my_folder`{{execute}} # Remove originals to show extraction

`unzip demo_archive.zip`{{execute}}
# Output shows files and directories being extracted.
`ls`{{execute}} # Verify file1.txt and my_folder/ were recreated
`ls my_folder`{{execute}} # Verify inside.txt was recreated

Here are some highly used options for `unzip`:

1.  **`-l` (List archive contents)**
    Lists the files and directories contained within the `.zip` archive without actually extracting them. This is very useful for inspecting an archive before extracting.

    `unzip -l demo_archive.zip`{{execute}}
    # Output shows size, date, time, and name of each item inside the zip.

2.  **`-t` (Test archive integrity)**
    Checks the integrity of the `.zip` archive to ensure it is not corrupted. It performs a cyclic redundancy check (CRC) on each file compressed within the archive. It doesn't extract files.

    `unzip -t demo_archive.zip`{{execute}}
    # Output will indicate if the test was successful or if CRC errors were found.

3.  **`-d directory` (Extract to directory)**
    Extracts the files into a specified `directory` instead of the current working directory. This helps keep extracted files organized and avoids cluttering your current location.

    `mkdir extracted_content`{{execute}}
    `unzip demo_archive.zip -d extracted_content/`{{execute}} # Extract into 'extracted_content' folder
    `ls extracted_content`{{execute}} # Verify contents are there

4.  **`-o` (Overwrite existing files)**
    By default, `unzip` will ask you before overwriting a file if a file with the same name already exists at the destination. The `-o` option forces `unzip` to overwrite existing files without prompting. Useful in scripts where you want unattended extraction.

    `# Create a file that will be overwritten`
    `echo "This will be overwritten." > file1.txt`{{execute}}
    `unzip -o demo_archive.zip`{{execute}} # Overwrites file1.txt without asking

5.  **`-n` (Never overwrite existing files)**
    The opposite of `-o`. If a file with the same name already exists at the destination, `unzip` will never overwrite it; it will skip that file. Useful when you want to extract only new files.

    `# Assume file1.txt already exists`
    `unzip -n demo_archive.zip`{{execute}} # Skips extracting file1.txt

6.  **`-P password` (Use password)**
    Used to specify the password for extracting files from an encrypted archive. **Be cautious using this on the command line as the password might be visible in command history or process lists.** If you omit `-P` for an encrypted archive, `unzip` will prompt you securely for the password.

    `# Create an encrypted zip for demonstration`
    `echo "secret" > secret.txt`{{execute}}
    `zip -e encrypted.zip secret.txt`{{execute}} # Enter a password when prompted
    `rm secret.txt`{{execute}} # Remove original

    `# Extract using the password option (caution!)`
    `# unzip -P your_password encrypted.zip`{{execute}} # Replace 'your_password'

    `# Recommended: Let unzip prompt for password`
    `unzip encrypted.zip`{{execute}} # Unzip will ask for the password securely

7.  **Specify files to extract:**
    You can specify one or more file or directory names as arguments after the archive name to extract only those specific items, instead of the entire archive.

    `# Assume demo_archive.zip exists`
    `unzip demo_archive.zip my_folder/inside.txt`{{execute}} # Extract only the specific file
    `unzip demo_archive.zip my_folder/`{{execute}} # Extract the folder and its contents

The `unzip` command is the standard way to unpack `.zip` archives, providing options to control where files are extracted, how existing files are handled, and to work with password-protected archives.

