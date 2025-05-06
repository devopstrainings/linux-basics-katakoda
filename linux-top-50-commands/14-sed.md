In Linux and other Unix-like operating systems, the `sed` command is used to perform text transformations on an input stream (from files or piped data). It applies a script or command to each line.

The basic usage is `sed 'script' file(s)`. The most common 'script' command is `s` for substitution.

**Basic Substitution (Search and Replace):**
Replace the *first* occurrence of "old" with "new" on each line of a file. The substitution command format is `s/pattern/replacement/flags`.

`echo -e "line with old text\nanother old line\nold old old" > sed_test.txt`{{execute}}
`sed 's/old/new/' sed_test.txt`{{execute}} # Replaces only the first 'old' on each line

**Using the 'g' flag (Global Substitution):**
The `g` flag at the end of the `s` command tells `sed` to replace *all* occurrences of the pattern on each line, not just the first one.

`sed 's/old/new/g' sed_test.txt`{{execute}} # Replaces all 'old' on each line

**Using the 'i' flag (Case-Insensitive Substitution):**
The `i` flag (often used with `g`, e.g., `gi`) makes the pattern matching case-insensitive.

`echo "OLD AND new" > sed_case.txt`{{execute}}
`sed 's/old/new/gi' sed_case.txt`{{execute}} # Replaces 'OLD' and 'old' case-insensitively

**Deleting Lines using the 'd' command:**
The `d` command deletes the current line if it matches a specified address (either a line number or a pattern).

`# Delete the line containing "another"`
`sed '/another/d' sed_test.txt`{{execute}} # Deletes lines matching the pattern

`# Delete the 3rd line`
`sed '3d' sed_test.txt`{{execute}} # Deletes the line with line number 3

**Using Addresses (Pattern or Line Number) to limit commands:**
You can precede most `sed` commands (like `s` or `d`) with an address (a line number or a regular expression pattern) to make the command apply only to lines matching that address.

`# Replace 'old' with 'new' ONLY on lines that also contain the word 'line'`
`sed '/line/ s/old/new/g' sed_test.txt`{{execute}} # Substitution only happens on lines with 'line'

`# Replace 'old' with 'new' ONLY on line number 1`
`sed '1 s/old/new/g' sed_test.txt`{{execute}} # Substitution only happens on line 1

**Using sed with Pipes:**
`sed` is very commonly used to transform output from other commands.

`# List files in long format and replace spaces with underscores (simple example)`
`ls -l | sed 's/ /_/g'`{{execute}} # Note: This is a simplistic example; ls -l has complex spacing

These examples cover the most frequent uses of `sed`: substitution and deletion, often with flags and addresses to control where and how the commands are applied. `sed` is a fundamental tool for text manipulation in shell scripting and command-line workflows.
