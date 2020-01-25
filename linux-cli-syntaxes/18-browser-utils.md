## ____________________________________________

## Command line browser

Most of the times you need to browse urls to and fetch that content to command line. Some times we need partial information of the URL or the full information. `curl` command is available to browse the content over command line.

`Syntax: curl <url>`

`curl www.google.com`{{execute}} 

Using `curl` command we can download the files.

`curl https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.0-RC1/bin/apache-tomcat-8.0.0-RC1-deployer.tar.gz -o apache-tomcat-8.0.0-RC1-deployer.tar.gz`

Above command will download the file to the given filename.
But with out giving the filename also we can download it to the default file name.

`curl -O https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.0-RC1/bin/apache-tomcat-8.0.0-RC1-deployer.tar.gz`

## Download Files

Most of the times we need to download softwares or tools from internet to work on them. We can use `wget` command to download the files from internet.

`Syntax: wget <url>`

In this example I will be downloading tomcat from the internet.

`wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.0-RC1/bin/apache-tomcat-8.0.0-RC1-deployer.tar.gz`{{execute}}

`ls`{{execute}} 

**NOTE**: `wget` command will not come by default with OS. We need to exclusively install that, So better use `curl` command all the time.