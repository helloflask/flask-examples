provider "aws" {
 region = "us-west-1"

 backend "s3" {
    bucket         = "appsilon-task"
    key            = "s3://appsilon-task/terraform.tfstate"
    region         = "us-west-1"
    access_key     = "AKIAZGJDMTD7E3QJJB4N"
    secret_key     = "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"
    dynamodb_table = "Appsilon-table"
  }
}
