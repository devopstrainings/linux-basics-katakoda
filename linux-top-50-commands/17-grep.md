In Linux and other Unix-like operating systems, the `grep` command is used to search for a specified **pattern** within text data. By default, it prints any line that contains the pattern.

The basic usage is `grep pattern file(s)`.

**Searching for a pattern in a single file:**
Search for lines containing the word "error" in a file named 'app.log'.

`echo -e "INFO: Application started\nERROR: Database connection failed\nINFO: User login\nWARN: Disk space low\nERROR: API timeout" > app.log`{{execute}}
`grep "error" app.log`{{execute}} # Finds and prints lines with "error"

**Searching in multiple files:**
You can provide multiple filenames to `grep`. It will print matching lines and prefix them with the filename where the match was found.

`echo "Config loaded successfully" > config.log`{{execute}}
`grep "ERROR" app.log config.log`{{execute}} # Searches in both files

**Piping output to grep:**
`grep` is often used in pipelines (`|`) to filter the output of other commands. For example, listing processes and searching for a specific one.

`# List all processes and filter to find the 'sshd' process`
`ps -ef | grep sshd`{{execute}} # Pipes ps output to grep

Here are some highly used options for `grep`:

1.  **`-i` (Ignore case)**
    Performs a case-insensitive search. The pattern will match both uppercase and lowercase letters. This is very helpful when you're not sure about the exact casing of the text you're searching for.

    `grep -i "error" app.log`{{execute}} # Finds "ERROR" and "error"

2.  **`-v` (Invert match)**
    Instead of printing lines that *match* the pattern, the `-v` option prints lines that *do not match* the pattern. This is useful for filtering out specific information.

    `# Print all lines from app.log that are NOT INFO messages`
    `grep -v "INFO" app.log`{{execute}} # Prints ERROR and WARN lines

3.  **`-n` (Line number)**
    Prefixes each matching line with the line number where the match was found within the file. Useful for quickly locating the match in the original file.

    `grep -n "ERROR" app.log`{{execute}} # Shows line number before matching lines

4.  **`-c` (Count matches)**
    Instead of printing the matching lines, this option prints only a count of the lines that matched the pattern in each file.

    `grep -c "ERROR" app.log config.log`{{execute}} # Shows count of errors per file

5.  **`-l` (Files with matches)**
    If you're searching through many files, `-l` will simply print the names of the files that contain at least one match, rather than printing the matching lines themselves.

    `# Create another file with no errors`
    `echo "Everything is fine" > status.log`{{execute}}
    `grep -l "ERROR" app.log config.log status.log`{{execute}} # Only prints app.log

6.  **`-r` (Recursive search)**
    Recursively searches for the pattern in files within directories. You can specify a directory instead of files. `grep -r pattern directory/` is a common way to search through project files.

    `mkdir logs`{{execute}}
    `echo "Error in log file A" > logs/logA.txt`{{execute}}
    `echo "Success" > logs/logB.txt`{{execute}}
    `grep -r "Error" logs/`{{execute}} # Searches recursively in the 'logs' directory

The `grep` command is fundamental for text processing and data extraction on the command line. Understanding its options, especially how to use regular expressions with it, greatly enhances your ability to work with text data.

