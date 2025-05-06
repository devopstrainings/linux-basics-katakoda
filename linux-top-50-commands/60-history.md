In Linux shells like Bash, the `history` command shows a list of previously executed commands.

The basic usage is simply `history`.

`history`{{execute}}
#
# Output shows a numbered list of commands you have previously entered.
# Example Output:
#   995  ls -l
#   996  cd /var/log
#   997  grep error syslog
#   998  history

One of the main uses of the history list is to **re-execute previous commands** quickly using history expansion:

* **`!number`**: Re-execute the command corresponding to the given `number` in the history list.
* **`!string`**: Re-execute the most recent command that starts with `string`.
* **`!!`**: Re-execute the very last command.
* **`!string:p`**: Print the command that would be re-executed without actually running it.

`# Example (assuming your history contains 'ls -l' as entry 995):`
`!995`{{execute}} # Executes `ls -l`

`# Example (assuming your last command was `history`):`
`!!`{{execute}} # Executes `history` again

`# Example (assuming you recently ran a command starting with 'grep'):`
`!grep`{{execute}} # Executes the most recent command starting with 'grep'

Here are some useful options for the `history` command:

1.  **`history COUNT` (Display last N commands)**
    Displays only the last `COUNT` commands from the history list. Useful when the history is very long.

    `# Display the last 10 commands you entered`
    `history 10`{{execute}}

2.  **`-c` (Clear history)**
    Clears the command history for the current shell session. **This does NOT clear the history stored in the history file on disk immediately**, but it clears the list displayed by `history` in your current terminal. The on-disk file is usually updated when the session ends.

    `history -c`{{execute}} # Clears the current session's history list

3.  **`-d OFFSET` (Delete entry)**
    Deletes the history entry at the specified `OFFSET` (the number shown in the history list).

    `# Delete the command at history number 996 (example)`
    `# history -d 996`{{execute}} # Use with caution!

4.  **`-w` (Write to file), `-r` (Read from file), `-a` (Append to file)**
    These options manage the interaction with the history file on disk (e.g., `~/.bash_history`).
    * `-w`: Write the current history list from memory to the history file, overwriting the file.
    * `-r`: Read the history file and append its contents to the current session's history list in memory.
    * `-a`: Append the new commands from the current session (since the session started or last -a) to the history file.

    Shells often handle reading (`-r` or similar on start) and appending/writing (`-a` or `-w` on exit) automatically based on shell configuration variables (`HISTFILE`, `HISTSIZE`, `HISTFILESIZE`, `HISTCONTROL`).

    `# Manually save the current history to the file (usually happens on exit)`
    `history -w`{{execute}}

The `history` command and its related history expansion features (`!`) are fundamental for efficient command-line usage, allowing you to quickly recall and reuse previous commands, saving typing and preventing errors.
