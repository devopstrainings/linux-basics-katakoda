### Finding Files

Most of the times when you login you have no idea where the files are located at. Since Linux doesn't have an UI it would be a tedious job to traverse through all the directories to find a single file but linux provides find command to search for a file with the name.

Syntax: find <location-to-find> <search-criteria>

`find / -name passwd`{{execute}} This command searches through all the directories as we have given the location as / . you will find many files 

`find /etc -name passwd`{{execute}} This command only searches /etc directory for the passwd file. You can obseeve that the results are smaller in size.

### command line browser

most of the times you need to browse urls to and fetch that content to command line.Some times we need partial information of the URL or the full information. Curl command is available to browse the content over command line.

Syntax: curl <url>

`curl www.google.com`{{executed}} 

### Download Files

Most of the times we need to download softwares or tools from internet to work on them. We can use wget command to download the files from internet. It downloads the file to the location from where you are running the command by default

Syntax: wget <url>

In this example I will be downloading tomcat from the internet.

`wget http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz`{{execute}}

`ls`{{execute}} you can find a new jenkins.tar here

### Extracting the files from tar

Many times in Linux world all the softwares are packaged either in .zip or .tar format.To extract the files from .tar extension we can use tar command

Syntax: tar -xf <filename>.tar.gz

`tar -xf 

