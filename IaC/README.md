# Creating an EC2 Instance on AWS using Terraform (IaC)
 
IaC was used in spinning up my EC2 instance on AWS and the tool used was terraform.

I created a providers.tf, variables.tf and main.tf files to contain all the necessary dependencies required for each IaC job to run seamlessly.
Every of the content in the file was tailored to reference AWS since that is the provider I am using with terraform.
These commands were ran to initialize and also test the terraform script on my local machine.

```bash 
Terraform init
Terraform validate
Terraform plan
Terraform apply
```
Also in the IaC-terraform.yml workflow, I specified that terraform should save the statefile to my S3 bucket already created with the public access and bucket policy updated and I also added the IAM user credential (Access key and Secret key) to secrets options in github secret for ease of accessing AWS platform.

## Specifications used in the terraform files

```bash 
AMI:Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2023-05-16
AMI ID:ami-0f8e81a3da6e2510a
Instance type: t2.micro
Size: 1vCPU, 1Gb RAM
region: us-west-1
S3 Bucket: appsilon-task
```
