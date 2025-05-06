In Linux and other Unix-like operating systems, the `awk` command is used to process text files or data streams. It works by reading input line by line (records), splitting each line into fields, and executing a program for each line. The program consists of `pattern { action }` pairs.

The basic usage is `awk 'program' file(s)`. By default, `awk` uses whitespace (spaces, tabs) as the field separator. The entire line is referred to as `$0`, the first field as `$1`, the second as `$2`, and so on.

**Basic usage: Printing specific fields:**
Display the first and third fields from each line of a file.

`echo -e "apple red 1\nbanana yellow 2\norange orange 3" > fruits.txt`{{execute}}
`awk '{ print $1, $3 }' fruits.txt`{{execute}} # Prints the 1st and 3rd fields

**Printing the entire line:**
Use `$0` to refer to the entire line.

`awk '{ print $0 }' fruits.txt`{{execute}} # Prints the whole line (same as cat)

**Using Patterns to filter lines:**
You can specify a pattern before the action. The action will only be executed for lines that match the pattern. The pattern can be a regular expression or a condition.

`# Print lines containing "orange"`
`awk '/orange/ { print $0 }' fruits.txt`{{execute}} # Prints only the orange line

`# Print lines where the third field is greater than 1`
`awk '$3 > 1 { print $1, $3 }' fruits.txt`{{execute}} # Prints lines for banana and orange

Here are some highly used `awk` features and options:

1.  **`-F fs` (Specify Field Separator)**
    This option is crucial when your data is not whitespace-separated, such as CSV files (comma-separated values) or colon-separated files (`/etc/passwd`). `-F` allows you to specify the field separator `fs`.

    `echo -e "user1:x:1000:1000:User One:/home/user1:/bin/bash\nuser2:x:1001:1001:User Two:/home/user2:/bin/sh" > passwd_like.txt`{{execute}}
    `# Print the first and sixth fields (username and home directory) using ':' as separator`
    `awk -F ':' '{ print $1, $6 }' passwd_like.txt`{{execute}}

2.  **`BEGIN { action }` and `END { action }` blocks**
    The `BEGIN` block's action is executed *once* before `awk` starts processing any input lines. This is typically used for printing headers or initializing variables. The `END` block's action is executed *once* after `awk` has finished processing all input lines. This is useful for printing summaries or final results.

    `awk 'BEGIN { print "Fruit, Number" } { print $1, $3 } END { print "--- End of List ---" }' fruits.txt`{{execute}} # Adds a header and footer

3.  **Built-in Variables: `NR` (Record Number) and `NF` (Number of Fields)**
    `NR` holds the current record number (line number) being processed. `NF` holds the total number of fields in the current record. These are very useful in patterns or actions.

    `# Print each line prefixed with its line number and the count of fields`
    `awk '{ print NR, NF, $0 }' fruits.txt`{{execute}}

4.  **Basic Conditional Statements (`if`)**
    You can use `if` statements within actions to perform tasks only if a certain condition is met.

    `# Print fruit and number only if the number is exactly 2`
    `awk '{ if ($3 == 2) print $1, $3 }' fruits.txt`{{execute}}

`awk` is a very powerful and flexible tool, often considered a mini-programming language. It excels at parsing and processing structured text data based on fields and patterns.

