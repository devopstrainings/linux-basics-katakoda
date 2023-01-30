## ____________________________________________

## Command line browser

Most of the time we need to browse urls to and fetch that content to command line. Sometimes we need partial information of the URL or the full information. `curl` command is available to browse the content over command line.

`Syntax: curl <url>`

`curl www.google.com`{{execute}} 

Using `curl` command we can download the files.

`curl https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.0-RC1/bin/apache-tomcat-8.0.0-RC1-deployer.tar.gz -o apache-tomcat-8.0.0-RC1-deployer.tar.gz`

Above command will download the file to the given filename.
But without giving the filename also we can download it to the default file name.

`curl -O https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.0-RC1/bin/apache-tomcat-8.0.0-RC1-deployer.tar.gz`


## Extracting the files from tar

Many times in Linux world all the softwares are packaged either in `.zip` or `.tar` format. To extract the files from `.tar` extension we can use `tar` command.

```
Syntax: tar -xf <filename>.tar.gz
```

`tar -xf apache-tomcat-8.0.0-RC1-deployer.tar.gz`{{execute}} 

To extract archives we use `-x` option and `-f` means file.

## Extracting the files from zip 

```
Syntax: unzip <filename>.zip
```

```
curl -L -o shipping.zip https://github.com/roboshop-devops-project/shipping/archive/refs/heads/main.zip
unzip shipping.zip 
```
