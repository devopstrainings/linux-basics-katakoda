In Linux and other Unix-like operating systems, `vim` is a highly configurable text editor built on the foundation of the older `vi` editor. It's known for its efficiency once you learn its keybindings and modes, making it a powerful tool for coding and editing configuration files directly in the terminal.

Unlike simpler command-line tools, `vim` operates in different **modes**. This is a core concept you must understand to use it:

1.  **Normal Mode (Command Mode):** This is the default mode when you open `vim`. In this mode, keyboard keys are interpreted as commands (like moving the cursor, deleting text, copying, pasting). You *cannot* directly type text into the file in this mode.
2.  **Insert Mode:** In this mode, typing on the keyboard inserts text into the file, like a standard text editor. You *cannot* execute commands directly in this mode.
3.  **Visual Mode:** Used for selecting blocks of text to apply commands to.
4.  **Command-Line Mode (or Cmdline Mode):** Accessed from Normal mode by typing `:` or `/`. Used for entering specific commands (like saving, quitting, searching and replacing, setting options).

Here's how you typically start and perform basic actions in `vim`:

**Opening a file:**
To open a file for editing, use `vim` followed by the filename. If the file doesn't exist, `vim` will open a new buffer with that name, and the file will be created when you save it.

`vim my_new_document.txt`{{execute}}
# This command launches the interactive vim editor in your terminal.
# You will be in Normal mode initially.

**Entering Text (Switching to Insert Mode):**
From Normal mode, press `i` (for insert) to switch to Insert mode. You can then start typing text. Other keys like `a` (append after cursor), `o` (open line below) also enter Insert mode.

`# In Normal mode, press the 'i' key`
# ... now you can type ...

**Exiting Insert Mode (Returning to Normal Mode):**
To stop typing and return to Normal mode (so you can use commands), press the `Esc` key. This is one of the most frequent actions you'll perform.

`# In Insert mode, press the 'Esc' key`
# ... now you are back in Normal mode ...

**Saving and Quitting (Using Command-Line Mode):**
From Normal mode, type the colon `:` to enter Command-Line mode. A `:` prompt will appear at the bottom of the terminal. You can then type commands followed by pressing `Enter`.

* `:w` - Save the current file (write).
* `:q` - Quit the editor. Will fail if there are unsaved changes.
* `:wq` - Save and then quit.
* `:q!` - Quit without saving (discard changes). Use with caution!

`# In Normal mode, type ':' then 'w' then 'Enter'`
`:w`{{execute}} # Save the file

`# In Normal mode, type ':' then 'q' then 'Enter'`
`:q`{{execute}} # Quit (if no unsaved changes)

`# In Normal mode, type ':' then 'wq' then 'Enter'`
`:wq`{{execute}} # Save and Quit

`# In Normal mode, type ':' then 'q!' then 'Enter'`
`:q!`{{execute}} # Quit and discard changes

While `vim` has command-line options (like `+linenumber` to open a file at a specific line: `vim +25 my_document.txt`), its primary power lies in its rich set of interactive commands and modes once you are inside the editor. Mastering `vim` involves learning these internal commands and navigating between modes.
