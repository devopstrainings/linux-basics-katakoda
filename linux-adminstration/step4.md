# 
# 

Package Management is also a key admin activity that most of the time as a DevOps guy we deal with. We need to install / update the packages all the time.

In RedHat OS and its family like CentOS, they use `RPM`(Redhat Package Manager), So the softwares we download will have an extension ending with `.rpm` like `.msi` in windows. 

Earlier to install an **RPM** we use to use `rpm` command, But using it have some dependencies problem and local repository problems. To avoid that RedHat has introduced a new command which overcomes the problems of `rpm` command and the new command is `yum` (YelloDog Updated Modifier). 

First, In case if we want to list out the packages which are installed in your system then..

`yum list installed`{{execute}}

At the same time we can also get the packages which are not installed and also available for installation from remote repositories.

`yum list available`{{execute}}

In case if we want both the packages which are installed and available for install then we can use a flag `list`..

`yum list all`{{execute}}

Above command would bombard with thousands of lines output and can be piped to filter the content.

`yum list all | grep ^httpd`{{execute}}

To install a package 

`yum install nginx`{{execute}}

Above command will interrupt for an input whether to proceed with an installation or not. To avoid the interruption we can use `-y` option.

`yum install tomcat -y`{{execute}}

To remove / erase a package in the system 

`yum remove nginx -y` {{execute}}

To update a package 

`yum update nginx -y`{{execute}}

To update the complete system 

`yum update -y` 

However if you wondered that how `yum` in managing the installation, You will see that it is downloading the package and installing it. But from where it is downloading?

Command `yum` will refer the repos available under `/etc/yum.repos.d/*.repo` files and reach out to only those destinations to download the files.

Let us understand it through a situation.

`yum install jenkins -y`{{execute}}

Above command will try to install Jenkins software but it will be a failure, So let us download a repo file and check it.

Check list of repos 

`ls /etc/yum.repos.d`{{execute}}

`
curl -s https://pkg.jenkins.io/redhat-stable/jenkins.repo -o /etc/yum.repos.d/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
`{{execute}}

Check list of repos now.

`ls /etc/yum.repos.d`{{execute}}

Now after importing those new repo files you would be able to install Jenkins software 

`yum install jenkins -y`{{execute}}

