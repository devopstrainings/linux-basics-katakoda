## ____________________________________________

## Linux Editors.

There are so many editors which are part of different Linux Operating Systems. Editors like `vi`, `nano`, `gedit`, `emacs` and more are mostly known editors. Among these 90% of the operating systems comes with `vi` editor as default editor.

`vi` is very powerful editor and it comes with much more options, However we consider to know these options because later we edit the code more with editor installed in desktop. Because

    1. Ideally in organisation we work on 
       local desktop than server directly 
       for editing the code. In realtime 
       we dont directly do modifications 
       on server directly
 

    2. Later we with automations, where 
       we dont do manual changes on the 
       server directly at all in Lab and 
       as well as in companies

## `VI` Editor.

We can edit the file by and save the changes by following instructions.

`vi file` -> Press `Insert` or `i` -> Make Changes -> Press `ESC` -> Press Colon `:` -> Press `wq` -> Done

We can come out of file without saving the changes

`vi file` -> Press `Insert` or `i` -> Make Changes -> Press `ESC` -> Press Colon `:` -> Press `q!`

**NOTE**: Please do not waste much time in editor options, I agree knowing more is always good, But we have other things to do as well. So please limit with these options in `vi` editor. One fine day you can allocate couple of hours and explore some more options.

## `SED` Editor.

Most of the times as DevOps Engineer we are going to make the changes to the systems using automation, While we are in Linux OS to autoamte we will use shell commands only to perform that job. 

So here the command `sed` comes as default cli editor which can do the job for you.

When we pickup any editor, These may the requirements that can come.
    
    1. Search and Replace
    2. Add a new line
    3. Delete a line 

Now lets go with sed editior and do the above operations

In sed command we use `-i` option to edit the file, However in case if we dont want to edit the file, But we need to see the changes on the screen, then we no need to provide `-i` option.

1. Search and Replace 

Syntax:

```text
sed -i 's|WORD1|WORD2|' file
```

```bash
sed -i 's|nologin|yeslogin|' passwd
```

Search and replace comes with two more scenarios.

i. Search and replace all strings in a line 

```bash
sed -i 's|root|ADMIN|g' passwd
```

ii. Search and replace with case insensitivity.

```bash
sed -i 's|root|ADMIN|i' passwd
```

Also we can use `ig` combined as well.


2. Add a new line.

Adding lines can be done in two criterias.

i. Give line number and based on that line number we can add / insert / change .

```bash
sed '1 i Hello World' passwd
sed '1 a Hello World' passwd
sed '1 c Hello World' passwd
```


ii. Give a string and based on that string we can add.

```bash
sed '/root/ i Hello World' passwd
sed '/root/ a Hello World' passwd
sed '/root/ c Hello World' passwd
```

3. Delete a line

```bash
sed '/root/ d' passwd
sed '10 d' passwd
```

With a single sed command we can perform multiple operations as well by using `-e` option.

```bash
sed -e '1 d' -e '10 a Hello' -e 's|root|ADMIN|' passwd
```

