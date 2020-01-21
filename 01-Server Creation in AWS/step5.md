# Understand Amazon Infrastructure

1. Regions in Amazon.
2. Availability Zones in Amazon.
3. Services in Amazon

https://aws.amazon.com/about-aws/global-infrastructure/

So choose a region for our practice.


# Lets create a server in Amazon.

Choose EC2 Service in Amazon.

![Choose EC2](https://gitlab.com/cit-devops/intros/uploads/5ce968e9c22a29685b018392b5c85734/image.png)

Then Choose "Public Images"

![Public Images](https://gitlab.com/cit-devops/intros/uploads/96da52f3964dfd8b4490203dc8ca8ebc/image.png)

Then Search for Owner "973714476881" 

OR You can use one of the link based on your region choose.

N.Virginia Region: https://console.aws.amazon.com/ec2/home?region=us-east-1#Images:visibility=public-images;ownerAlias=973714476881;sort=name

Oregon Region : https://console.aws.amazon.com/ec2/home?region=us-west-2#Images:visibility=public-images;ownerAlias=973714476881;sort=name

Ohio Region : https://console.aws.amazon.com/ec2/home?region=us-east-2#Images:visibility=public-images;ownerAlias=973714476881;sort=name

Then Choose an AMI then Launch.

![Choose AMI](https://gitlab.com/cit-devops/intros/uploads/787b1d027563c36c6d410992c133ef16/image.png)

Select **"t2.micro"** and click on **"Review and Launch"**.


Then **"Proceed without a key pair"**

![Key Pair](https://gitlab.com/cit-devops/intros/uploads/7c2fd2045593377289fbdc7156a0a8a8/image.png)


Finally after the server created, You will get a public IP. Connect to the server using the following command.

`ssh root@<PUBLIC-IP>`

Use the following credentials.

# Username / Password : root / DevOps321

Lets move on to Linux Learning :)