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


**NOTE**: There are lot many operations are available, But we are talking which is needed for DevOps prospective.