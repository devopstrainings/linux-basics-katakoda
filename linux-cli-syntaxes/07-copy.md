## ____________________________________________
## Copying Files & Directories

In Linux to copy a file we have `cp` command. Alternatively we have `rsync` but mostly we prefer to use `cp` command in general.

`Syntax: cp <source-file> <destination-file>`

`cp notes.txt pages.txt`{{execute}}

You can check whether the file has been copied or not by referring `ls` command output.

`ls`{{execute}}

Same way we can copy the directory using same cp command but with `-r` option.

`mkdir demo`{{execute}}
`touch demo/new.txt`{{execute}}

Now lets try to copy this directory to `/tmp` location.

`cp -r demo /tmp`{{execute}}

Lets verify it.

`ls /tmp`{{execute}}
`ls /tmp/demo`{{execute}}

