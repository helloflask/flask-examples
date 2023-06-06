# Configure the AWS provider and version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3"
    }
  }

  backend "s3" {
    bucket         = "appsilon-task"
    key            = "appsilon-terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "appsilon-terraform-lock"
  }

  #required_version = ">= 1.1.0"
}

provider "aws" {
  features {}
}
