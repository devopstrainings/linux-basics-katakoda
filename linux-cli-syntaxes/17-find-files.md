## ____________________________________________

## Finding Files

Most of the times when you login you have no idea where the files are located at. Since Linux doesn't have an UI it would be a tedious job to traverse through all the directories to find a single file but linux provides `find` command to search for a file with the name.

`Syntax: find <location-to-find> <search-criteria>`

`find / -name passwd`{{execute}} 

This command searches through all the directories as we have given the location as `/ `. You will find many files, but you can narrow down the search nby providing `/etc` directory.

`find /etc -name passwd`{{execute}} 

This command only searches `/etc` directory for the `passwd` file. You can observe that the results are less in number.


## Additional things to learn.

https://alvinalexander.com/unix/edu/examples/find.shtml

