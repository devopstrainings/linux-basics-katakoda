In Linux and other Unix-like operating systems, the `head` command is used to display the **head** (the beginning) of a file. By default, it shows the first 10 lines.

The basic usage is `head` followed by the name(s) of the file(s).

**Displaying the beginning of a single file (default 10 lines):**
Create a file with more than 10 lines and display its beginning.

`echo -e "Line 1\nLine 2\nLine 3\nLine 4\nLine 5\nLine 6\nLine 7\nLine 8\nLine 9\nLine 10\nLine 11\nLine 12" > large_file.txt`{{execute}}
`head large_file.txt`{{execute}} # Displays the first 10 lines

**Displaying the beginning of multiple files:**
When you use `head` with multiple files, it displays the beginning of each file, preceded by a header indicating the filename.

`echo -e "File1 L1\nFile1 L2" > file1_head.txt`{{execute}}
`echo -e "File2 L1\nFile2 L2" > file2_head.txt`{{execute}}
`head file1_head.txt file2_head.txt`{{execute}} # Displays heads with headers

Here are some useful options for `head` that control how much content is displayed:

1.  **`-n COUNT` (Display the first COUNT lines)**
    This is the most common way to use `head` to specify exactly how many lines you want to see from the beginning of the file. Replace `COUNT` with the desired number of lines. You can also use `head -COUNT FILENAME`.

    `# Display the first 5 lines of the file`
    `head -n 5 large_file.txt`{{execute}}

    `# Alternative syntax (less standard, but commonly supported)`
    `head -5 large_file.txt`{{execute}}

2.  **`-c COUNT` (Display the first COUNT bytes)**
    Instead of counting lines, the `-c` option tells `head` to display the first `COUNT` bytes of the file. You can specify the count in bytes, or use suffixes like `k` (kilobytes), `m` (megabytes), `g` (gigabytes).

    `echo "ABCDEFGHIJKLMNOPQRSTUVWXYZ" > byte_file.txt`{{execute}}
    `head -c 10 byte_file.txt`{{execute}} # Display the first 10 bytes

    `# Display the first 1 kilobyte (1024 bytes)`
    `# head -c 1k very_large_file.bin` # Example (won't execute here)

3.  **`-q` (Quiet / suppress headers)**
    When reading multiple files, `head` normally prints a header (`==> filename <==`) before the content of each file. The `-q` option suppresses these headers, providing raw output of the concatenated beginnings of the files.

    `head -q file1_head.txt file2_head.txt`{{execute}} # Displays heads without headers

The `head` command is a simple but essential tool for quickly previewing the start of files, and the `-n` option provides precise control over how many lines you want to see.
