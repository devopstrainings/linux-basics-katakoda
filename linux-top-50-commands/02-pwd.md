In Linux and other Unix-like operating systems, the `pwd` command is used to **Print Working Directory**. Your working directory is the directory you are currently in within the file system hierarchy. When you navigate the file system using commands like `cd`, `pwd` tells you your current location.

`pwd`{{execute}}

The output of `pwd` is the absolute path from the root directory (`/`) to your current location.

While `pwd` is simple, it has a couple of options primarily related to how it handles symbolic links:

1.  **`-L` (Logical)**
    This is often the default behavior. It prints the logical current working directory. If your current directory is a symbolic link, `-L` will show you the path *including* the symbolic link itself, not the actual physical path the link points to.

    `pwd -L`{{execute}}

    *Note: In many shells, `pwd` behaves as if `-L` is specified by default unless configured otherwise or if you are in a directory created via certain shell built-ins.*

2.  **`-P` (Physical)**
    This option prints the physical current working directory. If your current directory is a symbolic link, `-P` will resolve the link and show you the actual, physical path to the directory the link points to, without showing the link name itself in the path. This is useful when you need to know the true location on the disk, regardless of the links used to get there.

    `pwd -P`{{execute}}

Most of the time, you will simply use `pwd` without any options, and it will show you the logical path (`-L` behavior). The `-P` option is helpful when dealing with complex directory structures involving multiple symbolic links.
