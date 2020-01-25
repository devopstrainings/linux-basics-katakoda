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

### Download Files

Most of the times we need to download softwares or tools from internet to work on them. We can use wget command to download the files from internet. It downloads the file to the location from where you are running the command by default

`Syntax: wget <url>`

In this example I will be downloading tomcat from the internet.

`wget http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz`{{execute}}

`ls`{{execute}} 

you can find a new apache-tomcat-9.0.27.tar.gz here