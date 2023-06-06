# Configure the AWS provider and version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0.2"
    }
  }

  backend "s3" {
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  features {}
}
