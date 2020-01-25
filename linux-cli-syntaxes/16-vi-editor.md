## ____________________________________________

## Linux Editors.

There are so many editors which are part of different Linux Operating Systems. Editors like `vi`, `vim`, `nano`, `gedit`, `emacs` and more are mostly known editors. Among these 90% of the operating systems comes with `vi` editor as default editor.

`vi` is very powerful editor and it comes with much enhanced options in `vim`. Hence, we choose to go with `vim` in our sessions.

## `VIM` Editor.

`vim` editor has three modes and each and every mode has its own purpose and allows you to perform certain actions.

  1. ESC Mode
  2. COLON Mode
  3. INSERT Mode

All three modes are shown as below.

![VI MODES](https://github.com/devopstrainings/linux-basics-katakoda/raw/master/linux-cli-syntaxes/images/04-vi-modes.png)

Following are the operations done by each and every mode.

### ESC Mode.

ESC Mode is used to perform the following operations.

  1. Line Operations.

      -> Copy Lines

      Ex: Copy a Single Line

          1. Ensure you are in ESC Mode, by pressing ESC.
          2. Take the cursor to that line.
          3. Press yy to copy the line
          

      -> Paste Lines

      Ex: Paste a Single Line.

          1. Take the cursor to the line where you want to paste then press p after performing copy using yy.


      -> Delete/Cut Lines

      Ex: Cut / Delete a Single line

          1. Ensure you are in ESC Mode, by pressing ESC.
          2. Take the cursor to that line.
          3. Press dd to cut/delete the line

  2. Word Operations

      -> Copy Words

        `yw`

      -> Paste Words

        `p`

      -> Delete Words.

        `dw`

  `n` , Number can combined with any option of above. For ex to copy 10 lines `10yy`, and if we want to delete 5 lines then `5dd`


  3. Undo Operations.

    `u` is available to undo the operations like (CTRL + Z ) in windows.


### COLON Mode

COLON is used to perform the following options.

  1. Search Operation.

    Ex: Search a word.

      1. Ensure you are in ESC mode and press `:` to go to COLON Mode.
      2. :/WORD , GIve WORD which you want to search.

  2. Search & Replace 

    Ex: Search a Word and Replace

      1. Ensure you are in ESC mode and press `:` to go to COLON Mode.
      2. :%s/WORD1/WORD2/  -> This will replace WORD1 with WORD2
      3. Flags : g, i
          :%s/WORD1/WORD2/g -> global means all possibilities on the line will be changed. 
          :%s/WORD1/WORD2/i -> case-sensitive replace.

  3. File Operations

    1. Save File 
      :w
    2. Quit Editor
      :q
      :q! -> Quit with out saving
    3. Save and Quit
      :wq

### INSERT Mode

INSERT mode is used to add your own content, whereas above two 
**NOTE**: There are lot many operations are available, But we are talking which is needed for DevOps prospective.