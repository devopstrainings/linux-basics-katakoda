In Linux and other Unix-like operating systems, the `cat` command is used to **concatenate files and print on the standard output**. In practice, this mostly means displaying the content of one or more files in your terminal.

The basic usage is `cat` followed by the name(s) of the file(s) you want to display.

**Displaying the content of a single file:**
Display the contents of the file named 'my_notes.txt'.

`echo "This is line 1." > my_notes.txt`{{execute}}
`echo "This is line 2." >> my_notes.txt`{{execute}}
`cat my_notes.txt`{{execute}} # Display the content

**Displaying the content of multiple files:**
Display the contents of 'file1.txt' and 'file2.txt' one after another.

`echo "Content of file 1." > file1.txt`{{execute}}
`echo "Content of file 2." > file2.txt`{{execute}}
`cat file1.txt file2.txt`{{execute}} # Concatenate and display

Here are some useful options for `cat` that modify its output:

1.  **`-n` (Number all output lines)**
    The `-n` option numbers all output lines, starting with 1. This is useful when you need to reference specific lines in a file, for example, when debugging scripts or code.

    `echo -e "Line A\nLine B\n\nLine D" > numbered_file.txt`{{execute}}
    `cat -n numbered_file.txt`{{execute}} # Display with all lines numbered

2.  **`-b` (Number non-blank output lines)**
    Similar to `-n`, but `-b` only numbers the non-blank lines. Blank lines are not numbered. This is often preferred over `-n` when blank lines are frequent.

    `echo -e "Line A\nLine B\n\nLine D" > numbered_file.txt`{{execute}}
    `cat -b numbered_file.txt`{{execute}} # Display with non-blank lines numbered

3.  **`-s` (Squeeze blank lines)**
    The `-s` option reduces multiple consecutive blank lines into a single blank line. This helps clean up output from files that have excessive blank spacing.

    `echo -e "Line 1\n\n\nLine 2" > squeezed_file.txt`{{execute}}
    `cat squeezed_file.txt`{{execute}} # Display original with extra blanks
    `cat -s squeezed_file.txt`{{execute}} # Display with squeezed blanks

4.  **`-v` (Show non-printing characters)**
    The `-v` option displays non-printing characters (except for tabs and newlines) using `^` and `M-` notation. This is useful for inspecting files that might contain unexpected characters, such as control characters. (Note: For tabs use `-T`, for ends of lines use `-E`).

    `# Create a file with a control character (e.g., Ctrl+G, ASCII 7)`
    `echo -e "Hello\aWorld" > control_char_file.txt`{{execute}} # \a is the alert character
    `cat control_char_file.txt`{{execute}} # Might just see 'HelloWorld' or hear a beep
    `cat -v control_char_file.txt`{{execute}} # Should see 'Hello^GWorld'

The `cat` command is a versatile tool, most commonly used for simply viewing file contents, but its options allow for basic formatting and inspection of the output. It's also often used to pipe file content into other commands.
