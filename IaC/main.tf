provider "aws" {
 access_key = ${{ secrets.AWS_ACCESS_KEY_ID }}
 secret_access_key = ${{ secrets.AWS_SECRET_ACCESS_KEY }}
 region = "us-west-1"
}

resource "aws_instance" "appsilon-task" {
  ami           = "ami-0f8e81a3da6e2510a"  # Ubuntu 22.04 LTS
  instance_type = "t2.micro"

  tags = {
    Name = "Ubuntu EC2 Instance"
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  key_name               = "appsilon-key"
  vpc_security_group_ids = ["sg-068f9f3a590c31fae"]

  }
