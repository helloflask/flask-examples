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
  }

  #required_version = ">= 1.1.0"
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "us-west-1"
  
  features {}
}
