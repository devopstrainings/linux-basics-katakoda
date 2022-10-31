## ____________________________________________
## Command line Syntaxes.

You can see in the picture like how commands would be in Linux.

![Prompt Example](https://github.com/devopstrainings/linux-basics-katakoda/raw/master/linux-cli-syntaxes/images/02-prompt.png)


In the above diagram-1 we are executing the commands on shell. Shell is a place where users will execute the command on server.


#### Commands

In terminal the first argument we give to execute is a command.

For example:

`uname`{{execute}} 

`uname` is a command and that is the first word of a command line syntax.

#### Options

Certain commands are going to have options, Options in Linux Command line will be a second argument over the command line, Usually those options will be seen in three formats..

  1. `<command>    -<single character>` (Ex: -h , -v )
  2. `<command>    --<single word>`  (Ex: --help , --version)
  3. `<command>    -<single word>` (Ex: -version, -help)

For Example:

`uname -a`{{execute}}

`uname --all`{{execute}}

#### Inputs

Certain commands require inputs, Inputs are given with options in some commands and without options for some commands.

For Example:

`ls /boot`{{execute}}

`ls -d /boot`{{execute}}

In above example `ls` is a command `-d` is an option and `/boot` is an input. Given the command with and without option changes the behavior of the command execution.
