

### command line browser

most of the times you need to browse urls to and fetch that content to command line.Some times we need partial information of the URL or the full information. `Curl` command is available to browse the content over command line.

`Syntax: curl <url>`

`curl www.google.com`{{execute}} 

### Download Files

Most of the times we need to download softwares or tools from internet to work on them. We can use wget command to download the files from internet. It downloads the file to the location from where you are running the command by default

`Syntax: wget <url>`

In this example I will be downloading tomcat from the internet.

`wget http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz`{{execute}}

`ls`{{execute}} 

you can find a new apache-tomcat-9.0.27.tar.gz here

### Extracting the files from tar

Many times in Linux world all the softwares are packaged either in .zip or .tar format.To extract the files from .tar extension we can use tar command

Syntax: tar -xf <filename>.tar.gz

`tar -xf apache-tomcat-9.0.27.tar.gz`{{execute}} 

To extract archives we use `-x` option and `-f` means file.



