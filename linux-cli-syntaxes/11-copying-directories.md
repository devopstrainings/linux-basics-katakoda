## ____________________________________________

## Copy Directories

Copying directories can be done with the same command `cp` that is used to copy the files but while copying the directories we need mention `-r` option.

`Syntax: cp -r dir1 dir2` 

It copies all the contents of dir1 into dir2.

**Note:** If `dir2` already exists `dir1` will be copied inside `dir2`

`cp -r demo1 demo2`{{execute}} 

Copy always changes the behavior based on Target Directory.

`cp SOURCE TARGET`

-> if TARGET exists and if it is a file then it is invalid operation.

-> if TARGET exists and if it is a dir then it copies the file inside the directory.

-> if TARGET doesnt exist then it will copy the directory to that TATGET name