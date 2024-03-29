

Package Management is the key admin activity that most of the time as a DevOps guy we deal with. We need to install / update the packages all the time.

In RedHat OS and its family like CentOS, they use `RPM`(Redhat Package Manager), So the softwares we download will have an extension ending with `.rpm` like `.msi` in windows.

First, In case if we want to list out the packages which are installed in your system then..

`sudo dnf list installed`{{execute}}

At the same time we can also get the packages which are not installed and also available for installation from remote repositories.

`sudo dnf list available`{{execute}}

In case if we want both the packages which are installed and available for install then we can use a flag `list`..

`sudo dnf list all`{{execute}}

Above command would bombard with thousands of lines output and can be piped to filter the content.

`sudo dnf list all | grep nginx`{{execute}}

To install a package 

`sudo dnf install nginx`{{execute}}

Above command will interrupt for an input whether to proceed with an installation or not. To avoid the interruption we can use `-y` option.

`sudo dnf install nginx -y`{{execute}}

To remove / erase a package in the system 

`sudo dnf remove nginx -y`{{execute}}

To update a package 

`sudo dnf update nginx -y`{{execute}}

To update the complete system 

`sudo dnf update -y` 

However, if you wondered that how `dnf` in managing the installation, You will see that it is downloading the package and installing it. But from where it is downloading?

Command `dnf` will refer the repos available under `/etc/yum.repos.d/*.repo` files and reach out to only those destinations to download the files.

Let us understand it through a situation.

`sudo dnf list | grep jenkins -y`{{execute}}

Above command will try to install Jenkins software but it will be a failure, So let us download a repo file and check it.

Check list of repos 

`ls /etc/yum.repos.d`{{execute}}

Download Jenkins repo

`
curl https://pkg.jenkins.io/redhat-stable/jenkins.repo -o /etc/yum.repos.d/jenkins.repo
`{{execute}}

Check list of repos now.

`ls /etc/yum.repos.d`{{execute}}

Now after importing those new repo files you would be able to install Jenkins software 

`sudo dnf list | grep jenkins -y`{{execute}}

---
We can also install a package using the URL directly.

`sudo dnf install https://pkg.jenkins.io/redhat-stable/jenkins-2.190.2-1.1.noarch.rpm -y`{{execute}}

  
